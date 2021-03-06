% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distmat.R
\name{bike_match_matrices}
\alias{bike_match_matrices}
\title{Match rows and columns of distance and trip matrices}
\usage{
bike_match_matrices(mat1, mat2)
}
\arguments{
\item{mat1}{A wide- or long-form trip or distance matrix returned from
\code{\link{bike_tripmat}} or \code{\link{bike_distmat}}.}

\item{mat2}{The corresponding distance or trip matrix.}
}
\value{
A list of the same matrices with matching start and end stations, and
in the same order passed to the routine (that is, \code{mat1} then
\code{mat2}). Each kind of matrix will be identified and named accordingly as
either "trip" or "dist". Matrices are returned in same format (long or wide)
as submitted.
}
\description{
Match rows and columns of distance and trip matrices
}
\note{
Distance matrices returned from \code{bike_distamat} use all stations
listed for a given system, while trip matrices extracted with
\link{bike_tripmat} will often have fewer stations because operational
station numbers commonly vary over time. This function reconciles the two
matrices through matching all row and column names (or just station IDs for
long-form matrices), enabling then to be directly compared.
}
