\name{SBase-class}
\docType{class}
\alias{SBase-class}
\alias{annotation,SBase-method}
\alias{annotation}
\alias{annotation<-,SBase-method}
\alias{annotation<-}
\alias{metaId,SBase-method}
\alias{metaId}
\alias{metaId<-,SBase-method}
\alias{metaId<-}
\alias{notes,SBase-method}
\alias{notes}
\alias{notes<-,SBase-method}
\alias{notes<-}

\title{SBML type "SBase"}
\description{	The abstract type from which all other SBML types are derived. }
\section{Instantiation}{A virtual Class: No objects may be created from it.}
\section{Slots}{
	 \describe{
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
\section{Methods}{
  \describe{
    \item{annotation}{\code{signature(object = "SBase")}: gets the \code{annotation} slot }
    \item{annotation<-}{\code{signature(object = "SBase")}: sets the \code{annotation} slot }
    \item{metaId}{\code{signature(object = "SBase")}: gets the \code{metaId} slot }
    \item{metaId<-}{\code{signature(object = "SBase")}: sets the \code{metaId} slot }
    \item{notes}{\code{signature(object = "SBase")}: gets the \code{notes} slot }
    \item{notes<-}{\code{signature(object = "SBase")}: sets the \code{notes} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
