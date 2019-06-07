#' Add or update the 'RequestBodyFolderPath' in .Renviron
#'
#' \code{statx_set_request_folder} adds or updates the 'RequestBodyFolderPath' key in .Renviron file
#'
#' \code{statx_set_request_folder} adds or updates the 'RequestBodyFolderPath' key in \code{.Renviron} using the internal function \code{statx_set_renviron_key}.
#' The \code{folder_path} parameter must be passed an existing folder path, which is where request bodies will be stored and run from.
#' Backslashes must be escaped, e.g. \code{C:\\Documents\\FolderName} must be input as \code{C:\\\\Documents\\\\FolderName}.
#'
#' @param folder_path \code{string}. An existing folder path, which is where request bodies will be stored and run from.
#'
#' @return \code{logical}.
#' \code{TRUE} when key is successfully updated.
#' If \code{FALSE} will return error message.
#'
#' @export

statx_set_request_folder <- function(folder_path) {
  statx_set_renviron_key('RequestBodyFolderPath', folder_path)
}
