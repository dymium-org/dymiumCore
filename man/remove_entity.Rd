% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_entity.R
\name{remove_entity}
\alias{remove_entity}
\title{Remove entity}
\usage{
remove_entity(world, entity, subset)
}
\arguments{
\item{world}{a \link{World} object.}

\item{entity}{a character denoting the entity class to be remove.}

\item{subset}{an expression.}
}
\value{
the input \link{World} object invincibly
}
\description{
Remove entities inside an \link{Entity} object. The removed entities will be deleted
from The \link{Entity}'s 'attrs' database and move to the removed_data field of the
\link{DataBackend} that the 'attrs' database uses.
}
