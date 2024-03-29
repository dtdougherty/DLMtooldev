\name{runMSE}
\alias{runMSE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Run a Management Strategy Evaluation
}
\description{
A function that runs a Management Strategy Evaluation (closed-loop simulation) for a specified operating model
}
\usage{
runMSE(OM = "1", MPs = NA, nsim = 48, proyears = 28, 
       interval = 4, pstar = 0.5, maxF = 0.8, 
       timelimit = 1, reps=1, custompars = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{OM}{
An operating model object (class OM)
}
  \item{MPs}{
A vector of methods (character string) of class DLM_output or DLM_input.
}
  \item{nsim}{
Number of simulations
}
  \item{proyears}{
Number of projected years
}
  \item{interval}{
The assessment interval - how often would you like to update the management system?
}
  \item{pstar}{
The percentile of the sample of the management recommendation for each method
}
  \item{maxF}{
Maximum instantaneous fishing mortality rate that may be simulated for any given age class
}
  \item{timelimit}{
Maximum time taken for a method to carry out 10 reps (methods are ignored that take longer)
}
 \item{reps}{
Number of samples of the management recommendation for each method. Note that when this is set to 1, the mean value of the data inputs is used. 
}
\item{custompars}{
A data.table with nsim rows and nparameter columns. The column names must respond to variables of the operating model or observation model see the OM and Obs slots of the MSE class for correct names and interpretation. This allows users to prescribe correlated parameters or estimates from stock assessments. 
}
}
\value{
An object of class MSE
}
\author{
T. Carruthers
}
