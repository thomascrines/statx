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

statx_dataset = function(requestBody) {

  response <- POST(tableUrl,
                   content_type_json(),
                   add_headers("APIKey" = accessKey),
                   body = requestBody,
                   verbose())

  responseText <- content(response, "text")
  data <- fromJSON(responseText, flatten = TRUE)

  # dimnames = data$fields$items %>%
  #   map(~.$labels %>% unlist)
  #
  # values = data$cubes[[1]]$values
  #
  # dimnames(values) = dimnames
  #
  # df = as.data.frame.table(values, stringsAsFactors = FALSE) %>%
  #   as_tibble() %>%
  #   set_names(c(data$fields$label,"value"))
}
