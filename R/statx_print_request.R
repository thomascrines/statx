#' Print a request body
#'
#' \code{statx_print_request} prints a request body from a saved request file
#'
#' \code{statx_print_request} prints a saved request body to the console.
#' The \code{request} parameter must be passed a valid JSON request body. Request bodies can be added to the package
#' by calling \code{statx_add request}, and existing requests can be displayed by calling \code{statx_requests}.
#'
#' @param request \code{string}. A valid JSON request body. See the
#' \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore help} and \code{statx_add request}
#' for advice on creating a request body.
#'
#' @return \code{string}. A JSON request body printed to the console.
#'
#' @export

statx_print_request = function(request) {
  file <- paste("requestBodies/", request, ".json", sep = "")
  writeLines(readLines(file))
}
