statx_request_bodies <- function() {
  files <- list.files("requestBodiesJson")
  for(file in files) {
    print(tools::file_path_sans_ext(file))
  }
}
