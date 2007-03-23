\name{CompartmentGlyph-class}
\docType{class}
\alias{CompartmentGlyph-class}
\alias{compartment,CompartmentGlyph-method}
\alias{compartment<-,CompartmentGlyph-method}

\title{SBML type "CompartmentGlyph"}
\description{A glyph representing a \code{\linkS4class{Compartment}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("CompartmentGlyph", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{compartment}:}{Object of class \code{"character"} identifying the
    compartment this glyph represents.}
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
Class \code{"\linkS4class{GraphicalObject}"}, directly.
Class \code{"\linkS4class{SBase}"}, by class "GraphicalObject", distance 2.
}
\section{Methods}{
  \describe{
    \item{compartment}{\code{signature(object = "CompartmentGlyph")}: gets the \code{compartment} slot }
    \item{compartment<-}{\code{signature(object = "CompartmentGlyph")}: sets the \code{compartment} slot }
  }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
