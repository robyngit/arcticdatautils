% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{extract_local_identifier}
\alias{extract_local_identifier}
\title{Extract the local identifier for an ACADIS ISO metadata XML file.}
\usage{
extract_local_identifier(type, file)
}
\arguments{
\item{type}{(character) A string, one of "gateway" or "field-projects".}

\item{file}{(character) A string, a connection, or raw vector
(same as \code{\link[xml2]{read_xml}}).}
}
\value{
The identifier string. (character)
}
\description{
Extract the local identifier for an ACADIS ISO metadata XML file.
}
