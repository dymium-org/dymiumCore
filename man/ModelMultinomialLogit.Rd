% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ModelMultinomialLogit.R
\name{ModelMultinomialLogit}
\alias{ModelMultinomialLogit}
\title{ModelMultinomialLogit}
\arguments{
\item{params}{a named numeric vector.}

\item{formula}{a \code{formula} object of class \code{mlogit::mFormula}, \link[Formula:Formula]{Formula::Formula}, or \code{formula}.}

\item{preprocessing_fn}{a pre-processing function that gets applied to the
data given to the \code{predict} method before making the prediction.}

\item{newdata}{(\code{data.frame()}) \cr
new data to generate probabilities conditioned on its explanatory variables.}

\item{chooser_id_col}{(\code{character(1)})\cr
column name of the chooser id}

\item{choice_id_col}{(\code{character(1)})\cr
column name of the choice id}
}
\value{
a \code{data.frame} object with three columns: chooser_id (\code{integer()}),
choice_id (\code{integer()}), linear_comb (\code{numeric()}), prob (\code{numeric()}). Note
that, 'linear_comb' stands for linear combination (i.e. $$B1 * x1 + B2 * x2$$).
}
\description{
A multinomial logit model

Initialisation function

This predict method returns probabilities generated from the parameters
of this \link{Model} object.
}
\details{
This model object is use to create a multinomial model using already estimated
parameters.
}
\examples{

if (requireNamespace('mlogit')) {


}
}
