#' Set user-specific API key
#'
#' \code{statx_set_request_location} sets a directory to use to store requests.
#'
#' \code{statx_set_request_location} copies and renames a JSON file from an existing location to statxplorer, to make it available
#' to be called in \code{statx_dataset}.
#' The \code{request_name} parameter must be passed a user-defined string in order to name the request.
#' The \code{file_path} parameter must be passed a file path of an existing JSON request file.
#' JSON files can be written by hand according to the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore guidelines}, but it is easier to create a table using the \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/dataCatalogueExplorer.xhtml}{Stat-Xplore table generator} and saving the output as \code{Open Data API Query (.json)}.
#'
#' @param api_key \code{string}. A user-defined directory path.
#'
#' @return \code{tibble}.
#' When invalid arguments are used returns \code{NULL} with \code{warning}.
#'
#' @export

statx_set_api_key <- function(api_key) {
  renviron <- paste(Sys.getenv('R_USER'), "/.Renviron", sep = "")

  if (file.exists(renviron) == FALSE) {
  file.create("C:/Users/dsap01/Documents/.Renviron")
  }

  currentLines <- readLines(renviron)
  con <- file(renviron, open = 'r')

  if (length(currentLines) != 0) {
    while(TRUE) {
      line <- readLines(con, n = 1)
      if(length(line) == 0) break
      else if(startsWith(line, "StatXploreApiKey")){
        write(line, file = "something.txt", append = TRUE)
      }
    }
  }
  writeLines(paste('StatXploreApiKey = "', api_key, '"', sep = ""), renviron)
}


