statx_print_request = function(request) {
  file <- paste("requestBodies/", request, ".json", sep = "")
  writeLines(readLines(file))
}
