% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-event.R
\name{pick_models}
\alias{pick_models}
\title{Pick models}
\usage{
pick_models(model, world, required_models, as_r6model = FALSE)
}
\arguments{
\item{model}{\code{logical(1)}\cr
A named list that contains models that \link{Trans} supports.}

\item{world}{a \link{World} object.}

\item{required_models}{\code{character()}\cr
A character vector contains names of required models.}

\item{as_r6model}{default as FALSE, if TRUE all \code{required_models} will be returned
as \link{Model} objects.}
}
\value{
a list of models.
}
\description{
Pick models from \code{model} and \code{world} while giving a higher priority to any model
object that has the same name between the two. For example, if both have a model
object called \code{model_one}, although they have totally different values, this will
pick the \code{model_one} from \code{model} and not the other \code{model_one} in \code{world}. The
function goes over both objects to find all models with the names in \code{required_models}.
}
\note{
This is used by event functions to prioritise which models, from the user argument
or the one added to \link{World}, to use. An error will be raised if not all required
models are found.
}
\examples{

# pick_model looks for 'model_one'
create_toy_world()
my_model <- list(model_two = list(yes = 0.1, no = 0.9))
world$add(x = list(yes = 0.5, no = 0.5), "model_one")
world$add(x = list(yes = 0.5, no = 0.5), "model_two")
REQUIRED_MODELS <- c("model_one", "model_two")
final_model <- pick_models(my_model, world, REQUIRED_MODELS)

# you can see that the final pick picked model_one from `my_model` and
# not the one that was added to world as it gives hihger priority to the object
# in `model`.
final_model
}
