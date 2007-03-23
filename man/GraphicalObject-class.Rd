\name{GraphicalObject-class}
\docType{class}
\alias{GraphicalObject-class}
\alias{boundingBox,GraphicalObject-method}
\alias{boundingBox}
\alias{boundingBox<-,GraphicalObject-method}
\alias{boundingBox<-}
\alias{id<-,GraphicalObject-method}
\alias{id,GraphicalObject-method}

\title{SBML type "GraphicalObject"}
\description{The base class for graphical objects (e.g. glyphs) in SBML layouts.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("GraphicalObject", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{boundingBox}:}{Object of class \code{"BoundingBox"} describing
    the position and size of the graphical object.}
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
    \item{id}{\code{signature(object = "GraphicalObject")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "GraphicalObject")}: sets the \code{id} slot }
    \item{boundingBox}{\code{signature(object = "GraphicalObject")}: gets the \code{boundingBox} slot }
    \item{boundingBox<-}{\code{signature(object = "GraphicalObject")}: sets the \code{boundingBox} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
