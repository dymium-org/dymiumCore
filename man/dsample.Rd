% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{dsample}
\alias{dsample}
\title{Discrete choice sampling}
\usage{
dsample(x, size = 1, replace = FALSE, prob = NULL)
}
\arguments{
\item{x}{a vector that contains value(s) that represents a choiceset.}

\item{size}{a non-negative integer giving the number of items to choose.}

\item{replace}{should sampling be with replacement?}

\item{prob}{a vector of probability weights for obtaining the elements
    of the vector being sampled.}
}
\value{
returns a vector of the same type as \code{x} with length of \code{size}.
}
\description{
A modified sampling function based on \code{base::sample}. It always assume that
that \code{x} argument contains discrete values. For example, if a number 8 is given,
it will assume that 8 is the only choice it has and not assume that the choices
are number 1 to 8, like \code{base::sample} does. This feature makes it safe when the
choices are discrete numbers and use in a programmatic way.
}
\examples{

dsample(7, 10, replace = TRUE) # equivalent to rep(7, 10)
dsample(7, 1)
dsample(7) # which is equivalent to the above
}
