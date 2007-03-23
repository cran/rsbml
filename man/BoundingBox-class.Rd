\name{BoundingBox-class}
\docType{class}
\alias{BoundingBox-class}
\alias{position,BoundingBox-method}
\alias{position}
\alias{position<-,BoundingBox-method}
\alias{position<-}
\alias{id<-,BoundingBox-method}
\alias{id,BoundingBox-method}
\alias{dimensions<-,BoundingBox-method}
\alias{dimensions,BoundingBox-method}

\title{SBML type "BoundingBox"}
\description{Species the size and position of an SBML layout object.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("BoundingBox", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{position}:}{Object of class \code{"Point"} specifying the positon. }
    \item{\code{dimensions}:}{Object of class \code{"Dimensions"} specifying the size. }
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
    \item{id}{\code{signature(object = "BoundingBox")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "BoundingBox")}: sets the \code{id} slot }
    \item{dimensions}{\code{signature(object = "BoundingBox")}: gets the \code{dimensions} slot }
    \item{dimensions<-}{\code{signature(object = "BoundingBox")}: sets the \code{dimensions} slot }
    \item{position}{\code{signature(object = "BoundingBox")}: gets the \code{position} slot }
    \item{position<-}{\code{signature(object = "BoundingBox")}: sets the \code{position} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
