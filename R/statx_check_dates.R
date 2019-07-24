#' Return a list of dates from schema endpoint
#'
#' \code{statx_check_dates} returns a list from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore} schema endpoint.
#'
#' \code{statx_check_dates} returns a list from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore} schema endpoint.
#'
#' @return \code{list}. A list of the available dates for the given dataset.
#'
#' @export

statx_check_dates <- function() {
  #temporary variables to test: will be passed in to function later
# endpoint <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/schema/str:database:ACC"
endpoint <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/schema/str:database:PC_New"

access_key <- Sys.getenv("StatXploreApiKey")

data <- statx:::statx_schema_request(endpoint, access_key)

date_row <- data$children[grep("DATE", data$children$location), ]

date_location <-date_row$location

data <- statx:::statx_schema_request(date_location, access_key)

final_date_location <- data$children$location

data <- statx:::statx_schema_request(final_date_location, access_key)

date_range <- data$children$label
}
