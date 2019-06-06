#' Add or update .Renviron key
#'
#' \code{statx_set_renviron_key} adds or updates a key in .Renviron file
#'
#' \code{statx_set_renviron_key} adds or updates a key in \code{.Renviron}.
#' The \code{renviron_key} parameter must be passed a user-defined string in order to name the request.
#' The \code{file_path} parameter must be passed a file path of an existing JSON request file.
#' JSON files can be written by hand according to the \href{https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API-Table.html}{Stat-Xplore guidelines}, but it is easier to create a table using the \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/dataCatalogueExplorer.xhtml}{Stat-Xplore table generator} and saving the output as \code{Open Data API Query (.json)}.
#'
#' @param key \code{string}. The key to add or update.
#' @param value \code{string}. The value to apply to the key.
#'
#' @return \code{tibble}.
#' When invalid arguments are used returns \code{NULL} with \code{warning}.
#'
#' @internal

statx_set_renviron_key <- function(key, value) {
  renviron <- paste(Sys.getenv('R_USER'), "/.Renviron", sep = "")

  if (file.exists(renviron) == FALSE) {
    file.create(renviron)
  }

  currentLines <- readLines(renviron)
  con <- file(renviron, open = 'r')
  linesToKeep <- c()

  if (length(currentLines) != 0) {
    while(TRUE) {
      line <- readLines(con, n = 1)
      if(length(line) == 0) break
      else if(!startsWith(line, key)){
        linesToKeep <- c(linesToKeep, line)
      }
    }
  }
  writeLines(paste(key, ' = "', value, '"', sep = ""), renviron)
  write(linesToKeep, file = renviron, append = TRUE)
  close.connection(con)
}
