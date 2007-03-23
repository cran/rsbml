\name{Dimensions-class}
\docType{class}
\alias{Dimensions-class}
\alias{depth,Dimensions-method}
\alias{depth}
\alias{depth<-,Dimensions-method}
\alias{depth<-}
\alias{height,Dimensions-method}
\alias{height}
\alias{height<-,Dimensions-method}
\alias{height<-}
\alias{width,Dimensions-method}
\alias{width}
\alias{width<-,Dimensions-method}
\alias{width<-}

\title{SBML type "Dimensions"}
\description{Holds the size of an SBML layout object.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Dimensions", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{width}:}{Object of class \code{"numeric"} indicating the width, in pixels }
    \item{\code{height}:}{Object of class \code{"numeric"} indicating the height, in pixels }
    \item{\code{depth}:}{Object of class \code{"numeric"} indicating the depth, in pixels }
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
    \item{depth}{\code{signature(object = "Dimensions")}: gets the \code{depth} slot }
    \item{depth<-}{\code{signature(object = "Dimensions")}: sets the \code{depth} slot }
    \item{height}{\code{signature(object = "Dimensions")}: gets the \code{height} slot }
    \item{height<-}{\code{signature(object = "Dimensions")}: sets the \code{height} slot }
    \item{width}{\code{signature(object = "Dimensions")}: gets the \code{width} slot }
    \item{width<-}{\code{signature(object = "Dimensions")}: sets the \code{width} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
