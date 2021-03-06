% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/World.R
\name{World}
\alias{World}
\title{A representation of World}
\format{
\link[R6:R6Class]{R6::R6Class} object inheriting from \link{Container}<-\link{ContainerGeneric}<-\link{Generic}.
}
\description{
World is to be used for storing \link{Entities}, \link{Models} and \link{Containers}, setting
the simulation clock, and for keeping a log of your simulation outputs. You may
think of it as a container that is to be passed into event functions and let
each event function accesses the instances it needs that are being stored inside
World.
}
\section{Construction}{
\preformatted{x <- World$new()
}
\itemize{
\item NULL\cr
}
}

\section{Public Fields}{

\itemize{
\item \code{Cont}\cr
Contains the objects those were added using \code{self$add(...)}.
\item \code{info}\cr
Contains information about the World object such as dymium's version it was
created with, its built date, creator info, R version, etc.
}
}

\section{Active fields (read-only)}{

\itemize{
\item \code{containers}\cr
Contains \link{Containers} those were added using \code{self$add(...)}.
\item \code{entities}\cr
Contains \link{Entities} those were added using \code{self$add(...)}.
\item \code{models}\cr
Contains \link{Models} those were added using \code{self$add(...)}.
\item \code{scale}\cr
A positive numeric value indicating the scale of Targets use by World. Note that,
this cannot be 0.
}
}

\section{Public Methods}{

\itemize{
\item \code{add(x, name, replace = TRUE)}\cr
(\link{Entity} and inheritances | \link{Container} | an object of the classes in
\link{SupportedTransitionModels}, \code{character(1)}, \code{logical(1)})\cr
Add an object the allowed types to \code{self$Cont}, \code{self$entities}, \code{self$containers},
\code{self$models}. Only one instance of each class are allowed to be stored.
The stored instances can be access via \verb{self$<object-type>} or \code{self$get(x)}.
If \code{replace} is true then the object with the same name as \code{name} will be replaced.
\item \code{remove(x)}\cr
(\code{character(1)} | \code{integer(1)})\cr
Remove an object in element or named \code{x}.
\item \code{get(x)}\cr
(\code{character(1)}) -> (\verb{an R6 object})\cr
Get the value of the key in \code{x}. For example, if your \link{World} object contains
a \link{Population} object, then you can simply call \code{world$get("Population")} to
get the \link{Population} object, assuming that the \link{World} object is named \code{world}
in your calling scope.
\item \code{get_entity(x)}\cr
(\code{character(1)}) -> An \link{Entity} object\cr
Get a reference to the \code{x} Entity object.
\item \code{get_model(x)}\cr
(\code{character(1)}) -> A \link{Model} object\cr
Get a model object by name \code{x}. Note that, this returns a \link{Model} object of
\link[R6:R6Class]{R6::R6Class} not the actual model itself. To get the model object use \verb{$get()}
on the \link{Model} object.
\item \code{get_time()}\cr
() -> (\code{integer(1)})\cr
Get the value of .DMevn$sim_time.
\item \code{get_info()}\cr
\code{NULL} -> \code{list()}\cr
Get information about the creation of the world object.
Dymium's version, dependencies, R version etc.
\item \code{set_time(x)}\cr
(\code{integer(1)}) -> \code{self}\cr
Set the time on the World's simulation clock (.DMevn$sim_time).
\item \code{set_scale(x)}\cr
(\code{numeric(1)})\cr
Set the simulation scale which is stored as a global option (\code{dymium.simulation_scale}).
The scale parameter can also be accessd using \code{optionGet("dymium.simulation_scale")}.
The simulation scale parameter is useful for running a downsized version of your
world without manually going through all the data to scale them down. This scale
automatically applies to all \link{Targets} created.
\item \code{reset_time()}\cr
Reset the value of .DMevn$sim_time to 0L (L is for forcing type integer
otherwise 0 is of numeric type).
\item \code{start_iter(time_step, unit)}\cr
(\code{integer(1)}, \code{character(1)}) -> \code{self}\cr
Update the simulation time and returns self.
}
}

