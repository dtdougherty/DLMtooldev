\name{DLM_fease-class}
\Rdversion{1.1}
\docType{class}
\alias{DLM_fease-class}

\title{Class \code{"DLM_fease"}}
\description{
An object for storing information about what data are available or might be available
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("DLM_fease", stock)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{Name}:}{The name of the data feasibility object}
     \item{\code{Case}:}{The names of the data feasibility cases}
    \item{\code{Catch}:}{Total annual catches}
    \item{\code{Index}:}{An index of relative abundance, catch per unit effort data or of fishing mortality rate (effort)}
    \item{\code{Natural_mortality_rate}:}{From Maximum age, Tagging data, early fishery catch composition data}
    \item{\code{Maturity_at_length}:}{From gonadal analysis, growth and natural mortality rate estimates}
    \item{\code{Growth}:}{Paired length and age observations, maximum length and an estimate of natural mortality rate}
    \item{\code{Length_weight_conversion}:}{Paired weight and length observations, equivalent data from a similar species}
    \item{\code{Fleet_selectivity}:}{Length composition of catches with growth curve and natural mortality rate, estimates from a similar fleet type targetting a similar species}
    \item{\code{Catch_at_length}:}{Length composition of catches (length samples)}
    \item{\code{Catch_at_age}:}{Age composition of catches (age samples)}
    \item{\code{Recruitment_index}:}{Spawn survey, estimates from a stock assessment, VPA analysis of catch composition data}
    \item{\code{Stock_recruitment_relationship}:}{Stock assessment, a stock assessment of a similar species}
    \item{\code{Target_catch}:}{An agreed annual catch target, MSY proxy}
    \item{\code{Target_biomass}:}{An agreed absolute biomass target, mean historical biomass estimate}
    \item{\code{Target_index}:}{An agreed catch rate target}
    \item{\code{Abundance}:}{Fishery independent survey, current fishing mortality rate from recent length composition, natural mortality rate, maturity at age, growth and stock recruitment relationship, habitat and relative density extrapolation}
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "DLM_fease")}: ... }
    \item{plot}{\code{signature(x = "DLM_fease")}: ... }
    \item{summary}{\code{signature(object = "DLM_fease")}: ... }
	 }
}

\author{
T. Carruthers
}
\examples{
newdata<-new('DLM_fease')
}
\keyword{classes}
