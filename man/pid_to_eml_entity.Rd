% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eml.R
\name{pid_to_eml_entity}
\alias{pid_to_eml_entity}
\title{eml.R}
\usage{
pid_to_eml_entity(mn, pid, entityType = "otherEntity", ...)
}
\arguments{
\item{mn}{(MNode) Member Node where the PID is associated with an object.}

\item{pid}{(character) The PID of the object to create the sub-tree for.}

\item{entityType}{(character) What kind of objects to create from the input. Either "dataTable",
"spatialRaster", "spatialVector", "storedProcedure", "view", "otherEntity".}

\item{...}{(optional) Additional arguments to be passed to \code{new(entityType, ...)}. See example}
}
\value{
(list) The entity object
}
\description{
Helpers for creating EML.
Create EML entity from a DataONE pid
}
\examples{
\dontrun{
#Generate EML otherEntity
pid_to_eml_entity(mn,
                  pid,
                  entityType = "otherEntity",
                  entityName = "Entity Name",
                  entityDescription = "Description about entity")

}
}
