% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataBackendDataTable.R
\name{DataBackendDataTable}
\alias{DataBackendDataTable}
\title{data.table::data.table as data backend}
\format{
\link[R6:R6Class]{R6::R6Class} object inheriting from \link{DataBackendDataFrame}<-\link{DataBackend}.
}
\description{
\link{DataBackendDataTable} uses \link[data.table:data.table]{data.table::data.table} as back end to exploit
its fast and efficient implementations of many data operations. This includes
the \verb{:=} operator which allows a data.table object to be modified in place,
without making a copy.
}
\section{Construction}{
\preformatted{x <- DataBackendDataTable$new(.data, key = NULL)
}
\itemize{
\item \code{.data} :: \code{\link[data.table:data.table]{data.table::data.table()}}\cr
The input \code{\link[data.table:data.table]{data.table::data.table()}}.
\item \code{key} :: \code{NULL}|\code{character(1)}\cr
The key of \code{.data}.
}
}

\section{Fields}{

\itemize{
\item \code{key} :: \code{NULL}|\code{character(1)}\cr
The key of \code{.data}.
\item \code{data} :: \code{\link[data.table:data.table]{data.table::data.table()}}\cr
A copy of the data.table that was used to create the backend object.
To get the reference of the data.table, use \verb{$get(copy = FALSE)}.
\item \code{removed_data} :: \code{\link[data.table:data.table]{data.table::data.table()}}\cr
A copy of the removed data.
}
}

\section{Methods}{

\itemize{
\item \code{add(.data, fill = FALSE)}\cr
(\link[data.table:data.table]{data.table::data.table}) -> \code{NULL}\cr
Add data.
\item \code{remove(rows, cols)}\cr
(\code{integer()}, \code{integer()}) -> \code{NULL}\cr
Remove the rows in \code{rows} and the columns in \code{cols} in the data.
\item \code{get(rows, cols, copy = TRUE)}\cr
(\code{integer(1)}, \code{character()}, \code{logical(1)}) -> \code{data.frame()}\cr
Get data. If copy is \code{TRUE}, the returned data.table is a copy of the actual data.table
object used to create this backend object. Otherwise, the reference to the
data.table is returned which allows it to be modified with \code{data.table::set()} and
\verb{:=}. Note that, \code{rows} should be indexes of the data.table and \code{cols} are
a character vector that contains column names to be returned.
\item \code{view(interactive = FALSE)}\cr
(\code{logical(1)})\cr
View the data. If \code{interactive} is TRUE, the data will be shown in your
data tab if you are using RStudio.
\item \code{head(n = 5)}\cr
(\code{integer(1)}) -> \code{data.frame()}\cr
Get the head of the data.
\item \code{ncol()}\cr
() -> \code{integer(1)}\cr
Get the number of columns.
\item \code{nrow()}\cr
() -> \code{integer(1)}\cr
Get the number of rows.
\item \code{get_removed()}\cr
() -> \code{data.frame()}\cr
Get the removed data.
}
}

