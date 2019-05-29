#' Add a JSON request body
#'
#' \code{statx_add_request} copies and renames a JSON file from an existing location to statxplorer.
#'
#' \code{statx_add_request} copies and renames a JSON file from an existing location to statxplorer, to make it available
#' to be called in \code{statx_dataset}.
#' The \code{requestName} parameter must be passed a user-defined string in order to name the request.
#' The \code{filePath} parameter must be passed a file path of an existing JSON request file.
#' JSON files can be written by hand according to the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}
#' {Stat-Xplore guidelines}, but it is easier to create a table using the \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/dataCatalogueExplorer.xhtml}
#' {Stat-Xplore table generator} and saving the output as \code{Open Data API Query (.json)}.
#'
#' @param requestName \code{string}. A user-defined name for the request.
#' @param filePath \code{string}. The file path of the saved JSON request.
#'
#' @return \code{tibble}.
#' When invalid arguments are used returns \code{NULL} with \code{warning}.
#'
#' @export

statx_add_request = function(requestName, filePath) {

  fileName <- basename(filePath)
  subdirectory <- "requestBodies/"

  file.copy(from = filePath, to = subdirectory)
  file.rename(from = file.path(subdirectory, fileName), to = paste(subdirectory, requestName, ".json", sep = ""))
}
