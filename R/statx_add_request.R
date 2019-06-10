#' Add a JSON request body
#'
#' \code{statx_add_request} copies and renames a JSON file from an existing location to statx.
#'
#' \code{statx_add_request} copies and renames a JSON file from an existing location to statx, to make it available
#' to be called in \code{statx_dataset}.
#' The \code{request_name} parameter must be passed a user-defined string in order to name the request.
#' The \code{file_path} parameter must be passed a file path of an existing JSON request file.
#' JSON files can be written by hand according to the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore guidelines}, but it is easier to create a table using the \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/dataCatalogueExplorer.xhtml}{Stat-Xplore table generator} and saving the output as \code{Open Data API Query (.json)}.
#'
#' @param request_name \code{string}. A user-defined name for the request.
#' @param file_path \code{string}. The file path of the saved JSON request.
#'
#' @return \code{logical}.
#' \code{TRUE} when request body is successfully added.
#' If \code{FALSE} will return error message.
#'
#' @export

statx_add_request <- function(request_name, file_path) {

  destination <- Sys.getenv("RequestBodyFolderPath")
  file_name <- basename(file_path)

  file.copy(from = file_path, to = paste(destination, "\\", request_name, ".json", sep = ""))
}
