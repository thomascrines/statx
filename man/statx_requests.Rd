% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statx_requests.R
\name{statx_requests}
\alias{statx_requests}
\title{List all available requests}
\usage{
statx_requests()
}
\value{
\code{list}. A list of available requests.
}
\description{
\code{statx_requests} returns a dataset from \href{https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml}{Stat-Xplore}
}
\details{
\code{statx_requests} returns a list of requests. To see a full request body, pass the name of a request from the
list to \code{statx_print_request}. To send the request to the Stat-Xplore API, pass the name of a request to \code{statx_dataset}.
}
