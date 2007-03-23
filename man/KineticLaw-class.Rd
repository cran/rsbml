\name{KineticLaw-class}
\docType{class}
\alias{KineticLaw-class}
\alias{math,KineticLaw-method}
\alias{math}
\alias{math<-,KineticLaw-method}
\alias{math<-}
\alias{substanceUnits,KineticLaw-method}
\alias{substanceUnits}
\alias{substanceUnits<-,KineticLaw-method}
\alias{substanceUnits<-}
\alias{timeUnits,KineticLaw-method}
\alias{timeUnits}
\alias{timeUnits<-,KineticLaw-method}
\alias{timeUnits<-}
\alias{parameters,KineticLaw-method}
\alias{parameters<-,KineticLaw-method}

\title{SBML type "KineticLaw"}
\description{Describes the rate of a \code{\linkS4class{Reaction}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("KineticLaw", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{math}:}{Object of class \code{"expression"} defining the
    rate of the reaction.}
    \item{\code{parameters}:}{Object of class \code{"list"} containing
    \code{\linkS4class{Parameter}}s that may be used in \code{math}.}
    \item{\code{timeUnits}:}{Object of class \code{"character"} indicating the
    units for time.}
    \item{\code{substanceUnits}:}{Object of class \code{"character"} indicating
    the units for substance.}
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
    \item{math}{\code{signature(object = "KineticLaw")}: gets the \code{math} slot }
    \item{math<-}{\code{signature(object = "KineticLaw")}: sets the \code{math} slot }
    \item{substanceUnits}{\code{signature(object = "KineticLaw")}: gets the \code{substanceUnits} slot }
    \item{substanceUnits<-}{\code{signature(object = "KineticLaw")}: sets the \code{substanceUnits} slot }
    \item{timeUnits}{\code{signature(object = "KineticLaw")}: gets the \code{timeUnits} slot }
    \item{timeUnits<-}{\code{signature(object = "KineticLaw")}: sets the \code{timeUnits} slot }
    \item{parameters}{\code{signature(object = "KineticLaw")}: gets the \code{parameters} slot }
    \item{parameters<-}{\code{signature(object = "KineticLaw")}: sets the \code{parameters} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
