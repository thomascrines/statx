#' List all available requests
#'
#' \code{statx_requests} returns a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore}
#'
#' \code{statx_requests} returns a list of requests. To see a full request body, pass the name of a request from the
#' list to \code{statx_print_request}. To send the request to the Stat-Xplore API, pass the name of a request to \code{statx_dataset}.
#'
#' @return \code{list}. A list of available requests.
#'
#' @export

statx_requests <- function() {
  files <- list.files("requestBodies")
  for (file in files) {
    print(tools::file_path_sans_ext(file))
  }
}
