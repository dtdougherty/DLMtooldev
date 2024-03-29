\name{Stock-class}
\Rdversion{1.1}
\docType{class}
\alias{Stock-class}
%%\alias{initialize,Stock-method}

\title{Class \code{"Stock"}}
\description{
An operating model component that specifies the parameters of the population dynamics model
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Stock", OM)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{Name}:}{The name of the Stock object}
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
    \item{\code{L50}:}{Length-at- 50 percent maturity (uniform distribution)}
    \item{\code{L50_95}:}{Length increment from 50 percent to 95 percent maturity}
    \item{\code{D}:}{Current level of stock depletion (Bcurrent/Bunfished) (uniform distribution)}
    \item{\code{Perr}:}{Process error, the CV of lognormal recruitment deviations  (uniform distribution)}
    \item{\code{Size_area_1}:}{The size of area 1 relative to area 2 (uniform distribution)}
    \item{\code{Frac_area_1}:}{The fraction of the unfished biomass in stock 1 (uniform distribution)}
    \item{\code{Prob_staying}:}{The probability of inviduals in area 1 remaining in area 1 over the course of one year}
    \item{\code{Source}:}{A reference to a website or article form which parameters were taken to define the operating model}
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "Stock")}: ... }
	 }
}
\author{
T. Carruthers
}
\examples{
showClass("Stock")
}
\keyword{classes}
