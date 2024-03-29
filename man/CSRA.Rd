\name{CSRA}
\alias{CSRA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Catch at size reduction analysis
}
\description{
What depletion level and corresponding equlibrium F arise from data regarding mean length of current catches, natural mortality rate, steepness of the stock recruitment curve, maximum length, maximum growth rate, age at maturity, age based vulnerability, maturity at age, maximum age and number of historical years of fishing. 
}
\usage{
CSRA(M,h,Linf,K,t0,AM,a,b,vuln,mat,ML,CAL,CAA,maxage,nyears)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{
    A vector of natural mortality rate estimates
  }
  \item{h}{
   A vector of sampled steepness (Beverton-Holt stock recruitment)
  }
 \item{Linf}{
   A vector of maximum length (von Bertalanffy growth)
  } 
  \item{K}{
   A vector of maximum growth rate (von Bertalanffy growth)
  }
  \item{t0}{
    A vector of theoretical age at length zero (von Bertalanffy growth)
  }
  \item{AM}{
    A vector of age at maturity
  }
  \item{a}{
    Length-weight conversion parameter a (W=aL^b)
  }
   \item{b}{
    Length-weight conversion parameter b (W=aL^b)
  }
  \item{vuln}{
    A matrix nsim x nage of the vulnerabilty at age (max 1) to fishing.
  }
   \item{mat}{
    A matrix nsim x nage of the maturity at age (max 1)
  }
   \item{ML}{
    A vector of current mean length estimates
  }
   \item{CAL}{
    A catch-at-length matrix nyears x (1 Linf unit) length bins
  }
   \item{CAA}{
    A catch-at-age matrix nyears x maximum age
  }
  \item{maxage}{
    Maximum age
  }
  \item{nyears}{
    Number of historical years of fishing
  }
}
\author{
T. Carruthers
}

