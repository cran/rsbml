\name{RateRule-class}
\docType{class}
\alias{RateRule-class}
\alias{variable,RateRule-method}
\alias{variable}
\alias{variable<-,RateRule-method}
\alias{variable<-}

\title{SBML type "RateRule"}
\description{An equation that describes the rate of change in the quantity of a 
\code{\linkS4class{Species}}, the size of a \code{\linkS4class{Compartment}} 
or the value of a \code{\linkS4class{Parameter}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("RateRule", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{variable}:}{Object of class \code{"character"} naming the
      variable (the id of a \code{\linkS4class{Species}}, \code{\linkS4class{Compartment}}
      or \code{\linkS4class{Parameter}}) being described. }
    \item{\code{math}:}{Object of class \code{"expression"} specifying the equation. }
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
Class \code{"\linkS4class{Rule}"}, directly.
Class \code{"\linkS4class{SBase}"}, by class "Rule", distance 2.
}
\section{Methods}{
  \describe{
    \item{variable}{\code{signature(object = "RateRule")}: gets the \code{variable} slot }
    \item{variable<-}{\code{signature(object = "RateRule")}: sets the \code{variable} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
