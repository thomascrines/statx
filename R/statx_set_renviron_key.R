#' Add or update .Renviron key
#'
#' \code{statx_set_renviron_key} adds or updates a key in .Renviron file
#'
#' \code{statx_set_renviron_key} adds or updates a key in \code{.Renviron}.
#' It is an internal function, called in \code{statx_set_api_key} and \code{statx_set_request_folder},
#' preventing other keys being accidentally altered.
#' If there is no existing .Renviron in the home directory it is created.
#' For changes to take effect the R session must be restarted.
#' The \code{renviron_key} parameter must be passed a name for the key.
#' The \code{value} parameter must be passed the value to assign to the key.
#'
#' @param key \code{string}. The key to add or update.
#' @param value \code{string}. The value to apply to the key.
#'
#' @return \code{logical}.
#' \code{TRUE} when key is successfully updated.
#' If \code{FALSE} will return error message.
#'
#' @keywords internal

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
