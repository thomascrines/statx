#' Download a dataset
#'
#' \code{statx_dataset} returns a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore}
#'
#' \code{statx_dataset} returns a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/js/login.xhtml}{Stat-Xplore}.
#' The \code{request} parameter must be passed a valid JSON request body. Request bodies can be added to the package
#' by calling \code{statx_add request}, and existing requests can be displayed by calling \code{statx_requests}.
#'
#' @param request \code{string}. A valid JSON request body. See the
#' \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore help} and \code{statx_add request}
#' for advice on creating a request body.
#'
#' @return \code{tibble}. A tibble of the data described in the JSON request.
#'
#' @export

statx_dataset <- function(request) {

  access_key <- Sys.getenv("StatXploreApiKey") # Set API key in .Renviron file

  table_url <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/table"

  response <- httr::POST(table_url,
                   httr::content_type_json(),
                   httr::add_headers("APIKey" = access_key),
                   body = (httr::upload_file(paste(Sys.getenv("RequestBodyFolderPath"),
                                             '\\',
                                             request,
                                             ".json",
                                             sep = ""))),
                   httr::verbose())

  response_text <- httr::content(response, "text")

  data <- jsonlite::fromJSON(response_text, simplifyVector = FALSE)

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

    items <- purrr::imap(items, function(items, field) {
      tibble::tibble(!!field := items)
    })

    df <- do.call(tidyr::crossing, items)

    values <- unlist(data$cubes[[i]][[1]])

    df[[measure]] <- values

    df
    })

  dfs[[1]]

  }
