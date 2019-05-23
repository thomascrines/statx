#' Download a dataset
#'
#' \code{statx_dataset} returns a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore}
#'
#' \code{statx_dataset} returns either a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/js/login.xhtml}{Stat-Xplore}.
#' The \code{requestBody} parameter must be passed a valid JSON request body.
#'
#' @param requestBody \code{string}. A valid JSON request body. See the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore help}
#'
#' @return \code{tibble}.
#' When invalid arguments are used returns \code{NULL} with \code{warning}.
#'
#' @export

statx_dataset = function(request) {

  accessKey <- Sys.getenv("StatXploreApiKey") # Set API key in .Renviron file

  tableUrl <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/table"

  response <- httr::POST(tableUrl,
                   content_type_json(),
                   add_headers("APIKey" = accessKey),
                   body = (upload_file(paste("requestBodies/", request, ".json", sep = ""))),
                   verbose())

  responseText <- content(response, "text")

  data <- jsonlite::fromJSON(responseText, simplifyVector = FALSE)

  measures <- purrr::map_chr(data$measures, function(measure) measure$label)

  fields <- purrr::map_chr(data$fields, function(field) field$label)

  items <- purrr::map(data$fields, function(field) {
    unlist(lapply(field$items, function(item) item$labels))
    })

  names(items) <- fields

  uris <- purrr::map(data$fields, function(field) {
    unlist(lapply(field$items, function(item) item$uris))
    })

  names(uris) <- fields

  dfs <- purrr::imap(measures, function(measure, i) {

    df <- extract_items_df(items)

    values <- unlist(data$cubes[[i]][[1]])

    num_rows <- nrow(df)

    num_values <- length(values)

    df[[measure]] <- values

    df
    })

  dfs[[1]]

  # names(dfs) <- measures
  #
  # list(
  #   measures = measures,
  #   fields = fields,
  #   items = items,
  #   uris = uris,
  #   dfs = dfs)

  }

  extract_items_df <- function(items) {

    items <- purrr::imap(items, function(items, field) {
      tibble::tibble(!!field := items)
      })

    do.call(tidyr::crossing, items)
  }
