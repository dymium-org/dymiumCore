% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TransitionRegression.R
\name{TransitionRegression}
\alias{TransitionRegression}
\title{Transition for regression model}
\format{
\link[R6:R6Class]{R6::R6Class} object inheriting from \link{Trans}
}
\description{
This is particularly useful for updating agents' attributes that can be modelled
using a regression model.

By calling the constructor method of \link{TransitionClassification} this will
initiate the following steps:
\enumerate{
\item \code{initialise(x, model, target, targeted_agents)} ->
\item \code{filter(.data)}: filter agents to apply the transition to.
\item \code{mutate(.data)}: add variables to the data of the filtered agents.
\item \code{simulate()}: simulate the transition outcome using the probabilistic model
\item \code{postprocess(.sim_result)}: post-processing the simulation result.
}

Note that, the order of filter and mutate can be swap by overwriting the \code{mutate_first}
public field to \code{TRUE}. This may be useful in cases where agent selection for
the transition depends on one or more derived variables.

To get the simulation result use \verb{$get_result()}.
}
\note{
TransitionRegression only returns a raw output of the simulation result.
In a future update, there will be an option which allows the prediction result
to be drawn from a distribution to add randomness to the result.
}
\section{Construction}{
\preformatted{TransitionRegression$new(x, model, targeted_agents = NULL)
}
\itemize{
\item \code{x} :: \link[R6:R6Class]{R6::R6Class}\cr
A Agent class inheritance object.
\item \code{model} :: \verb{any object} in \link{SupportedTransitionModels}\cr
A model object to be used to simulate transition.
\item \code{targeted_agent} :: \code{\link[=integer]{integer()}}\cr
(Default as NULL)
A integer vectors that contains ids of agents in \code{x} to undergo the event.
}
}

\section{Fields}{

\itemize{
\item \code{mutate_first}:: \code{logical(1)}\cr
Default as FALSE, this flag is used to indicate whether the attribute data from
the Agent in \code{x} should be mutated (\verb{$mutate(.data)}) before filtered (\verb{$filter(.data)}).
}
}

\section{Methods}{

\itemize{
\item \code{filter(.data)}\cr
(\code{\link[data.table:data.table]{data.table::data.table()}}) -> \verb{[data.table::data.table()]}\cr
\strong{(By default, first of the preprocessing steps)}\cr
By default this method returns the input \code{.data}. This method can be overwrite
to give the user the flexibility to 'filter' the data prior to making prediction
by the given model. Filtering for eligible agents for this transition can be done in this step.
\item \code{mutate(.data)}\cr
(\code{\link[data.table:data.table]{data.table::data.table()}}) -> \verb{[data.table::data.table()]}\cr
\strong{(By default, second of the preprocessing steps)}\cr
By default this method returns the input \code{.data}. This method can be overwrite
to give the user the flexibility to 'mutate' the data prior to making prediction
by the given model. Adding derived variables and historical life course of the agents
can be done in this step.
\item \code{update_agents(attr)}\cr
(\code{character(1)})\cr
Update the attribute data of the agents that undergo the transition event.
\item \code{get_result(ids)}\cr
(\code{integer()}) -> \link[data.table:data.table]{data.table::data.table}\cr
Returns the simulation result in a \link[data.table:data.table]{data.table::data.table} format with two
columns \code{id} and \code{response}.
\item \code{get_nrow_result()}\cr
Returns the number of rows in the simulation result.
\item \code{get_decision_maker_ids(response_filter = NULL)}\cr
(\code{character()}) -> (\code{integer()})\cr
Returns ids of the agents that have their response equal to \code{response_filter}.
}
}

\examples{

# load toy data
create_toy_population()
Ind <- pop$get("Individual")

# fit a OLS regression model
model_lm <- glm(age ~ sex + marital_status,
                data = Ind$get_data(),
                family = "gaussian")
summary(model_lm)

TransAge <- TransitionRegression$new(Ind, model = model_lm)
# see the simulation result
TransAge

# update the individual agents' 'age' field using their simulated age
TransAge$update_agents(attr = "age")
}
\seealso{
\link{TransitionClassification} and \link{Trans}.
}
