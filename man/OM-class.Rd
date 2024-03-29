\name{OM-class}
\Rdversion{1.1}
\docType{class}
\alias{OM-class}
%%\alias{initialize,OM-method}

\title{Class \code{"OM"}}
\description{
An object containing all the parameters needed to control the MSE which can be build from component Stock, Fleet and Observation objects. Almost all of these inputs are a vector of length 2 which describes the upper and lower bounds of a uniform distribution from which to sample the parameter. 
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("OM", Stock, Fleet, Observation)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{Name}:}{Name of the operating model}
    \item{\code{nyears}:}{The number of years for the historical simulation}
    \item{\code{maxage}:}{The maximum age of individuals that is simulated (there is no 'plus group': individuals die off beyone the maximum age so there isn't a huge cost to simulating more older age classes)}
    \item{\code{R0}:}{The magnitude of unfished recruitment. This is normally fixed to some arbitrary value since it simply scales the simulated numbers)}
    \item{\code{M}:}{Natural mortality rate (uniform distribution)}
    \item{\code{Msd}:}{Inter-annual variability in natural mortality rate expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Mgrad}:}{Mean temporal trend in natural mortality rate, expressed as a percentage change in M per year (uniform distribution)}
    \item{\code{h}:}{Steepness of the stock recruit relationship (uniform distribution)}
    \item{\code{SRrel}:}{Type of stock-recruit relationship (1)Beverton-Holt (2) Ricker}
    \item{\code{Linf}:}{Maximum length (uniform distribution)}
    \item{\code{K}:}{von B. growth parameter k (uniform distribution)}
    \item{\code{t0}:}{von B. theoretical age at length zero (uniform distribution)}
    \item{\code{Ksd}:}{Inter-annual variability in growth parameter k (uniform distribution)}
    \item{\code{Kgrad}:}{Mean temporal trend in growth parameter k, expressed as a percentage change in k per year (uniform distribution)}
    \item{\code{Linfsd}:}{Inter-annual variability in maximum length - uniform distribution}
    \item{\code{Linfgrad}:}{Mean temporal trend in maximum length, expressed as a percentage change in Linf per year (uniform distribution)}
    \item{\code{recgrad}:}{Mean temporal trend in log-normal recruitment deviations (uniform distribution)}
    \item{\code{AC}:}{Autocorrelation in recruitment deviations rec(t)=AC*rec(t-1)+(1-AC)*sigma(t) (uniform distribution)}
    \item{\code{a}:}{Length-weight parameter alpha (uniform distribution)}
    \item{\code{b}:}{Length-weight parameter beta (uniform distribution)}
    \item{\code{D}:}{Current level of stock depletion (Bcurrent/Bunfished) (uniform distribution)}
    \item{\code{Size_area_1}:}{The size of area 1 relative to area 2 (uniform distribution)}
    \item{\code{Frac_area_1}:}{The fraction of the unfished biomass in stock 1 (uniform distribution)}
    \item{\code{Prob_staying}:}{The probability of inviduals in area 1 remaining in area 1 over the course of one year}
    \item{\code{Source}:}{A reference to a website or article form which parameters were taken to define the operating model}
    \item{\code{beta}:}{A parameter controlling hyperstability/hyperdepletion. I^beta therefore values below 1 lead to hyperstability (an index that decreases slower than true abundance) and values above 1 lead to hyperdepletion (an index that decreases more rapidly than true abundance)(uniform distribution)}
    \item{\code{Spat_targ}:}{Distribution of fishing in relation to spatial biomass: F is proportional to B^Spat_targ (uniform distribution) }
    \item{\code{LFS}:}{Shortest length that is fully vulnerable to fishing (uniform distribution)}
    \item{\code{L5}:}{Shortest length at 5 percent vulnerability (uniform distribution)}
    \item{\code{Vmaxlen}:}{The vulnerability of the longest (oldes) fish (uniform distribution)}
    \item{\code{L50}:}{Length at 50 percent maturity (uniform distribution)}
    \item{\code{L50_95}:}{Length increment from 50 to 95 percent maturity (uniform distribution)}
    \item{\code{Fsd}:}{Inter-annual variability in fishing mortality rate}
    \item{\code{EffYears}:}{Vector of verticies, years at which to simulate varying relative effort}
    \item{\code{EffLower}:}{Lower bound on relative effort corresponding to EffYears (uniform distribution)}
    \item{\code{EffYears}:}{Uppper bound on relative effort corresponding to EffYears (uniform distribution)}

    \item{\code{qinc}:}{Average percentage change in fishing efficiency (uniform distribution)(applicable only to forward projection and input controls)}
    \item{\code{qcv}:}{Inter-annual variability in fishing efficiency (uniform distribution)(applicable only to forward projection and input controls)}
    \item{\code{Cobs}:}{Log-normal catch observation error expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Cbiascv}:}{A coefficient of variation controlling the sampling of bias in catch observations for each simulation (uniform distribution)}
    \item{\code{CAA_nsamp}:}{Number of catch-at-age observation per time step (uniform distribution)}
    \item{\code{CAA_ESS}:}{Effective sample size (independent age draws) of the multinomial catch-at-age observation error model (uniform distribution)}
    \item{\code{CAL_nsamp}:}{Number of catch-at-length observation per time step (uniform distribution)}
    \item{\code{CAL_ESS}:}{Effective sample size (independent length draws) of the multinomial catch-at-length observation error model (uniform distribution)}
    \item{\code{CALcv}:}{Lognormal, variability in the length at age (uniform distribution)}
    \item{\code{Iobs}:}{Observation error in the relative abundance indices expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Perr}:}{The extent of inter-annual log-normal recruitment variability (sigma R)(uniform distribution)}
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
    \item{\code{LenMcv}:}{Persistent bias in the prescription of length at 50 percent maturity sampled from a log-normal distribution with coefficient of variation (A50cv)(uniform distribution)}
    \item{\code{Dbiascv}:}{Persistent bias in the prescription of stock depletion sampled from a log-normal distribution with coefficient of variation (Linfcv)(uniform distribution)}
    \item{\code{Dcv}:}{Imprecision in the prescription of stock depletion among years, expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Btbias}:}{Persistent bias in the prescription of current stock biomass sampled from a uniform-log distribution with range (Btbias)(uniform distribution)}
    \item{\code{Btcv}:}{Imprecision in the prescription of current stock biomass among years expressed as a coefficient of variation (uniform distribution)}
    \item{\code{Fcurbiascv}:}{Persistent bias in the prescription of current fishing mortality rate sampled from a log-normal distribution with coefficient of variation (Fcurcv)(uniform distribution)}
    \item{\code{Fcurcv}:}{Imprecision in the prescription of current fishing mortality rate among years expressed as a coefficient of variation (uniform distribution)}
    \item{\code{hcv}:}{Persistent bias in steepness (uniform distribution)}
    \item{\code{Icv}:}{Observation error in realtive abundance index expressed as a coefficient of variation (uniform distirbution)}
    \item{\code{maxagecv}:}{Bias in the prescription of maximum age (uniform distribution)}
    \item{\code{beta}:}{Parameter controlling hyperstability and hyperdepletion in the relative abundance index <1 is hyperstable >1 is hyperdeplete (uniform distribution)}
    \item{\code{Reccv}:}{Bias in the knowledge of recent recruitment strength (uniform distribution)}
    \item{\code{Irefcv}:}{Bias in the knowledge of the relative abundance index at BMSY (uniform distribution)}
    \item{\code{Brefcv}:}{Bias in the knowledge of BMSY (uniform distribution)}
    \item{\code{Crefcv}:}{Bias in the knowledge of MSY(uniform distribution)}
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "OM")}: ... }
	 }
}
\author{
T. Carruthers
}
\examples{
showClass("OM")
}
\keyword{classes}
