statx_schema_contents = function(schemaUrl, dataset, accessKey) {
  datasetUrl <- paste(schemaUrl, dataset, sep="")
  datasetRaw <- GET(datasetUrl, add_headers(apiKey = accessKey), verbose())
  datasetText <- content(datasetRaw, "text")
  datasetJson <- fromJSON(datasetText, flatten = TRUE)
  datasetDataFrame <- as.data.frame(datasetJson)
  # View(datasetDataFrame)
}
