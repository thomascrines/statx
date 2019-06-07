#' Add or update the 'StatXploreApiKey' in .Renviron
#'
#' \code{statx_set_api_key} adds or updates the 'StatXploreApiKey' key in .Renviron file
#'
#' \code{statx_set_renviron_key} adds or updates a key in \code{.Renviron} using the internal function \code{statx_set_renviron_key}.
#' The \code{api_path} parameter must be passed a valid StatXplore API key.
#' Information about how to get an API key can be found at \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API.html}{Stat-Xplore guidelines}.
#'
#' @param api_key \code{string}. The key to add or update.
#'
#' @return \code{logical}.
#' \code{TRUE} when key is successfully updated.
#' If \code{FALSE} will return error message.
#'
#' @export

statx_set_api_key <- function(api_key) {
  statx_set_renviron_key('StatXploreApiKey', api_key)
}
