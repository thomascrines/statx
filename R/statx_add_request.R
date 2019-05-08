statx_add_request = function(requestName) {
  # test json, add proper json later
  list1 <- vector(mode="list", length=2)
  list1[[1]] <- c("a", "b", "c")
  list1[[2]] <- c(1, 2, 3)

  exportJson <- toJSON(list1)
  write(exportJson, file=(paste("requestBodies/", requestName, ".json", sep = "")))
}
