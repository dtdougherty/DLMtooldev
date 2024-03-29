\name{Observation-class}
\Rdversion{1.1}
\docType{class}
\alias{Observation-class}
%%\alias{initialize,Observation-method}

\title{Class \code{"Observation"}}
\description{
An operating model component that controls the observation model
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Observation", OM)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{Name}:}{The name of the observation model object}
    \item{\code{Cobs}:}{Log-normal catch observation error expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Cbiascv}:}{A coefficient of variation controlling the sampling of bias in catch observations for each simulation (uniform distribution)}
    \item{\code{CAA_nsamp}:}{Number of catch-at-age observation per time step (uniform distribution)}
    \item{\code{CAA_ESS}:}{Effective sample size (independent age draws) of the multinomial catch-at-age observation error model (uniform distribution)}
    \item{\code{CAL_nsamp}:}{Number of catch-at-length observation per time step (uniform distribution)}
    \item{\code{CAL_ESS}:}{Effective sample size (independent length draws) of the multinomial catch-at-length observation error model (uniform distribution)}
    \item{\code{CALcv}:}{Lognormal, variability in the length at age (uniform distribution)}
    \item{\code{Iobs}:}{Observation error in the relative abundance indices expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Mcv}:}{Persistent bias in the prescription of natural mortality rate sampled from a log-normal distribution with coefficient of variation (Mcv)(uniform distribution)}
    \item{\code{Kcv}:}{Persistent bias in the prescription of growth parameter k sampled from a log-normal distribution with coefficient of variation (Kcv)(uniform distribution)}
    \item{\code{t0cv}:}{Persistent bias in the prescription of t0 sampled from a log-normal distribution with coefficient of variation (t0cv)(uniform distribution)}
    \item{\code{Linfcv}:}{Persistent bias in the prescription of maximum length sampled from a log-normal distribution with coefficient of variation (Linfcv)(uniform distribution)}
    \item{\code{LFCcv}:}{Persistent bias in the prescription of lenght at first capture sampled from a log-normal distribution with coefficient of variation (LFCcv)(uniform distribution)}
    \item{\code{LFScv}:}{Persistent bias in the prescription of length-at-fully selection sampled from a log-normal distribution with coefficient of variation (LFScv)(uniform distribution)}
    \item{\code{B0cv}:}{Persistent bias in the prescription of maximum lengthunfished biomass sampled from a log-normal distribution with coefficient of variation (B0cv)(uniform distribution)}
    \item{\code{FMSYcv}:}{Persistent bias in the prescription of FMSY sampled from a log-normal distribution with coefficient of variation (FMSYcv)(uniform distribution)}
    \item{\code{FMSY_Mcv}:}{Persistent bias in the prescription of FMSY/M sampled from a log-normal distribution with coefficient of variation (FMSY_cv)(uniform distribution)}
    \item{\code{BMSY_B0cv}:}{Persistent bias in the prescription of BMsY relative to unfished sampled from a log-normal distribution with coefficient of variation (BMSY_B0cv)(uniform distribution)}
   \item{\code{rcv}:}{Persistent bias in the prescription of intrinsic rate of increase sampled from a log-normal distribution with coefficient of variation (rcv)(uniform distribution)}
    \item{\code{LenMcv}:}{Persistent bias in the prescription of age at 50 percent vulnerability sampled from a log-normal distribution with coefficient of variation (A50cv)(uniform distribution)}
    \item{\code{Dbiascv}:}{Persistent bias in the prescription of stock depletion sampled from a log-normal distribution with coefficient of variation (Linfcv)(uniform distribution)}
    \item{\code{Dcv}:}{Imprecision in the prescription of stock depletion among years, expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Btbias}:}{Persistent bias in the prescription of current stock biomass sampled from a uniform-log distribution with range (Btbias)(uniform distribution)}
    \item{\code{Btcv}:}{Imprecision in the prescription of current stock biomass among years expressed as a coefficient of variation (uniform distribution)}
   \item{\code{Fcurbiascv}:}{Persistent bias in the prescription of current fishing mortality rate sampled from a log-normal distribution with coefficient of variation (Fcurcv)(uniform distribution)}
    \item{\code{Fcurcv}:}{Imprecision in the prescription of current fishing mortality rate among years expressed as a coefficient of variation (uniform distribution)}
    \item{\code{hcv}:}{Persistent bias in steepness (uniform distribution)}
    \item{\code{Icv}:}{Observation error in realtive abundance index expressed as a coefficient of variation (uniform distirbution)}
    \item{\code{maxagecv}:}{Bias in the prescription of maximum age (uniform distribution)}
    \item{\code{beta}:}{A parameter controlling hyperstability/hyperdepletion. I^beta therefore values below 1 lead to hyperstability (an index that decreases slower than true abundance) and values above 1 lead to hyperdepletion (an index that decreases more rapidly than true abundance)(uniform distribution)}
    \item{\code{Reccv}:}{Bias in the knowledge of recent recruitment strength (uniform distribution)}
    \item{\code{Irefcv}:}{Bias in the knowledge of the relative abundance index at BMSY (uniform distribution)}
    \item{\code{Brefcv}:}{Bias in the knowledge of BMSY (uniform distribution)}
    \item{\code{Crefcv}:}{Bias in the knowledge of MSY(uniform distribution)}
    
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "Observation")}: ... }
	 }
}
\author{
T. Carruthers
}
\note{
Its questionable whether the hyperstability/hyperdepletion should be categorised as an observation model characteristic as it is most often driven by fleet dynamics (and therefore should be in the fleet object). Oh well its here and you might want to make it hyperstable beta < 1 or hyperdeplete beta > 1, only. 
}
\examples{
showClass("Observation")
}
\keyword{classes}
