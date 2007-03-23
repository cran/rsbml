\name{StoichiometryMath-class}
\docType{class}
\alias{StoichiometryMath-class}
\alias{math,StoichiometryMath-method}
\alias{math<-,StoichiometryMath-method}

\title{SBML type "StoichiometryMath"}
\description{Dynamically defines the stoichiometry of a \code{\linkS4class{SpeciesReference}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("StoichiometryMath", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{math}:}{Object of class \code{"expression"} that evaluates to
     the stoichiometric coefficient.}
    \item{\code{metaId}:}{Object of class \code{"character"} that is an XML ID
      "described" by an RDF resource. This links an SBML element to an RDF
      resource. RDF may appear anywhere in an SBML element,
      but is usually placed inside the \code{annotation} element.}
    \item{\code{notes}:}{Object of class \code{"character"} 
      containing user-readable XHTML notes about an element. }
    \item{\code{annotation}:}{Object of class \code{"character"} containing
      additional machine-readable information about an element, usually as RDF,
      such as BioPAX. This is where application-specific data belongs.}
  }
}
\section{Extends}{
Class \code{"\linkS4class{SBase}"}, directly.
}
\section{Methods}{
  \describe{
    \item{math}{\code{signature(object = "StoichiometryMath")}: gets the \code{math} slot }
    \item{math<-}{\code{signature(object = "StoichiometryMath")}: sets the \code{math} slot }
  }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
