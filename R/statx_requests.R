statx_requests <- function() {
  files <- list.files("requestBodies")
  for(file in files) {
    print(tools::file_path_sans_ext(file))
  }
}
