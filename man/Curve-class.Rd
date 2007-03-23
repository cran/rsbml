\name{Curve-class}
\docType{class}
\alias{Curve-class}
\alias{curveSegments,Curve-method}
\alias{curveSegments}
\alias{curveSegments<-,Curve-method}
\alias{curveSegments<-}

\title{SBML type "Curve"}
\description{A curve (list of line segments) in an SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Curve", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{curveSegments}:}{Object of class \code{"list"} containing the 
      \code{\linkS4class{LineSegment}}s that compose the curve.}
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
    \item{curveSegments}{\code{signature(object = "Curve")}: gets the \code{curveSegments} slot }
    \item{curveSegments<-}{\code{signature(object = "Curve")}: sets the \code{curveSegments} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
