\name{Fdem}
\alias{Fdem}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Demographic FMSY method 
}
\description{
FMSY is calculated as r/2 where r is calculated from a demographic approach (inc steepness). Coupled with an estimate of current abundance that gives you the OFL. 
}
\usage{
Fdem(x, DLM_data, reps = 100)
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
\details{
Made up for this package. This uses Murdoch McAllister's demographic r method to derive FMSY (r/2) and then makes the quota r*current biomass / 2. Easy. 
}

\references{
McAllister, M.K., Pikitch, E.K., and Babcock, E.A. 2001. Using demographic methods to construct Bayesian priors for the intrinsic rate of increase in the Schaefer model and implications for stock rebuilding. Can. J. Fish. Aquat. Sci. 58: 1871-1890.
}
\author{
T. Carruthers
}

