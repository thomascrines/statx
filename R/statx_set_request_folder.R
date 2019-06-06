#' Add or update .Renviron folder loaction
#'
#' \code{statx_set_request_folder} adds or updates a key in .Renviron file
#'
#' \code{statx_set_request_folder} adds or updates a key in \code{.Renviron}.
#' The \code{renviron_key} parameter must be passed a user-defined string in order to name the request.
#' The \code{file_path} parameter must be passed a file path of an existing JSON request file.
#' JSON files can be written by hand according to the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore guidelines}, but it is easier to create a table using the \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/dataCatalogueExplorer.xhtml}{Stat-Xplore table generator} and saving the output as \code{Open Data API Query (.json)}.
#'
#' @param key \code{api_key}. The key to add or update.
#'
#' @return \code{tibble}.
#' When invalid arguments are used returns \code{NULL} with \code{warning}.
#'
#' @export

statx_set_request_folder <- function(folder_path) {
  statx_set_renviron_key('RequestBodyFolderPath', folder_path)
}
