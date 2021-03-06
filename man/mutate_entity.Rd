% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mutate-entity.R
\name{mutate_entity}
\alias{mutate_entity}
\title{Mutate entities}
\usage{
mutate_entity(world, entity, ..., ids = NULL, subset, preprocessing_fn)
}
\arguments{
\item{world}{a \link{World} object.}

\item{entity}{a character denoting an entity classname.}

\item{...}{a mutate expression using \link{data.table} syntax, e.g: age := age +1}

\item{ids}{a integer vector containing ids of \code{entity} to be mutated.}

\item{subset}{a subset expression, e.g: age > 30.}

\item{preprocessing_fn}{a filter function that accepts a data.table object.}
}
\value{
a \link{World} object.
}
\description{
This function allows the attribute data of any \link{Entity} instance and its
inheritances stored in \link{World} to be mutated.

It is useful for updating attribute variables, such as age of entities in each
iteration etc. Note that, only one or none of the filter strategies
{ids, subset, preprocessing_fn} should be used at a time.
}
\examples{

create_toy_world()

# increase age of all individual agents by 1 year.
world \%>\% mutate_entity(entity = "Individual", age := age + 1L)

# increase age of all female individual agents by 1 year.
world \%>\% mutate_entity(entity = "Individual", age := age + 1L, subset = sex == "female")

# incrementally increase age of all individual agents by 1 year in each iteration

for (i in 1:10) {
  world \%>\% mutate_entity(entity = "Individual", age := age + 1L, subset = sex == "female")
}
}
