#' Senc a request to the Stat-Xplore schema endpoint
#'
#' \code{statx_schema_request} sends a request to the Stat-Xplore schema endpoint
#'
#' \code{statx_schema_request} sends a request to the Stat-Xplore schema endpoint.
#' It is an internal function, called in \code{statx_check_dates}.
#' The \code{endpoint} parameter must be a valid schema endpoint.
#' The \code{access_key} parameter a valid Stat-Xplore access key.
#'
#' @param endpoint \code{string}. The API endpoint to query.
#' @param access_key \code{string}. A valid Stat-Xplore access key.
#'
#' @return \code{list}.
#'
#' @keywords internal


statx_schema_request <- function(endpoint, access_key) {

response <- httr::GET(url = endpoint,
                      httr::add_headers("APIKey" = access_key),
                      httr::verbose())

response_text <- httr::content(response, "text")

data <- jsonlite::fromJSON(response_text)

}
