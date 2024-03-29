\name{CSRAfunc}
\alias{CSRAfunc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimization function for CSRA
}
\description{
What depletion level and corresponding equlibrium F arise from data regarding mean length of current catches, natural mortality rate, steepness of the stock recruitment curve, maximum length, maximum growth rate, age at maturity, age based vulnerability, maturity at age, maximum age and number of historical years of fishing. 
}
\usage{
CSRAfunc(lnF,Mc,hc,maxage,nyears,AFSc,AFCc,Linfc,
         Kc,t0c,AMc,ac,bc,vulnc,matc,MLc,CAL,CAA,
         opt=T,meth="ML")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lnF}{
    A proposed value of current instantaneous fishing mortality rate
  }
  \item{Mc}{
    Natural mortality rate estimates
  }
  \item{hc}{
   Steepness (Beverton-Holt stock recruitment)
  }
  \item{maxage}{
    Maximum age
  }
  \item{nyears}{
    Number of historical years of fishing
  }
  \item{AFSc}{
    Age at full selection
  }
  \item{AFCc}{
    Age at first capture
  }
  \item{Linfc}{
   Maximum length (von Bertalanffy growth)
  } 
  \item{Kc}{
   Maximum growth rate (von Bertalanffy growth)
  }
  \item{t0c}{
    Theoretical age at length zero (von Bertalanffy growth)
  }
  \item{AMc}{
    Age at maturity
  }
  \item{ac}{
    Length-weight conversion parameter a (W=aL^b)
  }
   \item{bc}{
    Length-weight conversion parameter b (W=aL^b)
  }
  
  \item{vulnc}{
    A vector (nage long) of the vulnerabilty at age (max 1) to fishing.
  }
   \item{matc}{
    A vector (nage long) of the maturity at age (max 1)
  }
   \item{MLc}{
    A current mean length estimates
  }
   \item{CAL}{
    A catch-at-length matrix nyears x (1 Linf unit) length bins
  }
   \item{CAA}{
    A catch-at-age matrix nyears x maximum age
  }
  \item{opt}{
    Should the measure of fit be returned?
  }
  \item{meth}{
    Are we fitting to mean length or catch composition?
  }
  

}
\author{
T. Carruthers
}

