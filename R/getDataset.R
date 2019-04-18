getDataset = function(requestBody, tableUrl, accessKey) {

  response <- POST(tableUrl,
                   content_type_json(),
                   add_headers("APIKey" = accessKey),
                   body = requestBody,
                   verbose())

  responseText <- content(response, "text")
  data <- fromJSON(responseText, flatten = TRUE)

  dimnames = data$fields$items %>%
    map(~.$labels %>% unlist)

  values = data$cubes[[1]]$values

  dimnames(values) = dimnames

  df = as.data.frame.table(values, stringsAsFactors = FALSE) %>%
    as_tibble() %>%
    set_names(c(data$fields$label,"value"))
}
