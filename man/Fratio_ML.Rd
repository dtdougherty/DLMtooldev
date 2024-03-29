\name{Fratio_ML}
\alias{Fratio_ML}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
An FMSY/M ratio MP that uses a mean length estimator of recent Z
}
\description{
Calculates the OFL based on a fixed ratio of FMSY/M and an estimate of current stock size from a mean-length estimator. 
}
\usage{
Fratio_ML(x, DLM_data, reps = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A position in data-limited methods data object
}
  \item{DLM_data}{
A data-limited methods data object
}
  \item{reps}{
The number of TAC samples
}
}
\references{
Gulland, J.A., 1971. The fish resources of the ocean. Fishing News Books, West Byfleet, UK. 

Martell, S., Froese, R., 2012. A simple method for estimating MSY from catch and resilience. Fish Fish. doi: 10.1111/j.1467-2979.2012.00485.x.
}
\author{
T. Carruthers
}
\note{
The mean length extension was programmed by Gary Nelson as part of his excellent R package 'fishmethods'
}
