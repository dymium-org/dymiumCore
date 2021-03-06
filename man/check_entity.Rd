% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkmate.R
\name{check_entity}
\alias{check_entity}
\alias{assert_entity}
\alias{test_entity}
\alias{expect_entity}
\title{Check if an argument is from the Entity class.}
\usage{
check_entity(x)

assert_entity(x, .var.name = checkmate::vname(x), add = NULL)

test_entity(x)

expect_entity(x, info = NULL, label = vname(x))
}
\arguments{
\item{x}{(\code{any})\cr
An object to be checked.}

\item{.var.name}{[\code{character(1)}]\cr
The custom name for \code{x} as passed to any \code{assert*} function.
Defaults to a heuristic name lookup.}

\item{add}{\link[checkmate:AssertCollection]{checkmate::AssertCollection}\cr
Collection to store assertions. See \link[checkmate:AssertCollection]{checkmate::AssertCollection}.}

\item{info}{[\code{character(1)}]\cr
See \code{\link[testthat]{expect_that}}}

\item{label}{[\code{character(1)}]\cr
See \code{\link[testthat]{expect_that}}}
}
\value{
a logical value if TRUE or an character containing an error message.
}
\description{
Check if an argument is from the Entity class.
}
