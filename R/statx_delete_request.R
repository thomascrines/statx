#' Print a request body
#'
#' \code{statx_delete_request} deletes a saved JSON request body file
#'
#' \code{statx_delete_request} prints a saved request body to the console.
#' The \code{request} parameter must be passed a valid JSON request body. Request bodies can be added to the package
#' by calling \code{statx_add request}, and existing requests can be displayed by calling \code{statx_requests}.
#'
#' @param request \code{string}. A valid JSON request body. See the
#' \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore help} and \code{statx_add request}
#' for advice on creating a request body.
#'
#' @return \code{logical}.
#' \code{TRUE} when request body is successfully deleted.
#' If \code{FALSE} will return error message.
#'
#' @export

statx_delete_request <- function(request) {
  file <- paste(Sys.getenv("RequestBodyFolderPath"), "//", request, ".json", sep = "")
  file.remove(file)
}
