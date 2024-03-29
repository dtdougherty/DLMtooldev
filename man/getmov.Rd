\name{getmov}
\alias{getmov}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimization function to find a movement model that matches user specified movement characteristics.
}
\description{
The user specifies the probability of staying in the same area and spatial heterogeneity (both in the unfished state). 
}
\usage{
getmov(x,Prob_staying,Frac_area_1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A position in vectors Prob_staying and Frac_area_1
}
  \item{Prob_staying}{
User specified probability that individuals in area 1 remain in that area (unfished conditions)
}
  \item{Frac_area_1}{
User specified fraction of individuals found in area 1 (unfished conditions)
}
}
\details{
This is paired with movfit to find the correct movement model. 
}
\value{
A markov movement matrix
}
\author{
T. Carruthers
}
\examples{
Prob_staying<-0.8 # probability  that individuals remain in area 1 between time-steps
Frac_area_1<-0.35 # the fraction of the stock found in area 1 under equilibrium conditions
markovmat<-getmov(1,Prob_staying, Frac_area_1)
vec<-c(0.5,0.5) # initial guess at equilibrium distribution (2 areas)
for(i in 1:300)vec<-apply(vec*markovmat,2,sum) # numerical approximation to stable distribution
c(markovmat[1,1],vec[1]) # pretty close right?

}
