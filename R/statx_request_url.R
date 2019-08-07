#' Return API URL queried in request body
#'
#' \code{statx_request_url} returns all url from a Stat-Xplore request body
#'
#' \code{statx_request_url} returns all url included in a Stat-Xplore json request body.
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

statx_request_url <- function(request) {

  path <- file.path(Sys.getenv("RequestBodyFolderPath"), paste0(request, ".json"))
  json_body <- jsonlite::fromJSON(path)
  paste0("https://stat-xplore.dwp.gov.uk/webapi/rest/v1/schema/", json_body$database)

}
