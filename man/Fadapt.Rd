\name{Fadapt}
\alias{Fadapt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
An adaptive MP that uses trajectory in inferred suplus production and fishing mortality rate to update a TAC
}
\description{
Fishing rate is modified each year according to the gradient of surplus production with biomass (aims for zero).  F is bounded by FMSY/2 and 2FMSY and walks in the logit space according to dSP/dB. This is derived from the theory of Maunder 2014. 
}
\usage{
Fadapt(x, DLM_data, reps = 100, yrsmth = 7, gg=1)
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
  \item{yrsmth}{
Years over which to smooth recent estimates of surplus production  
}
\item{gg}{
A gain parameter controlling the speed in update in TAC.
}

}
\details{
Tested in Carruthers et al. 2015. 
}
\value{
A numeric vector of quota recommendations
}
\references{
Carruthers et al. 2015. Performance evaluation of simple management procedures. Fish and Fisheries. In press. 
Maunder. 2014. http://www.iattc.org/Meetings/Meetings2014/MAYSAC/PDFs/SAC-05-10b-Management-Strategy-Evaluation.pdf
}
\author{
T. Carruthers
}
