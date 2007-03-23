\name{SpeciesReferenceGlyph-class}
\docType{class}
\alias{SpeciesReferenceGlyph-class}
\alias{role,SpeciesReferenceGlyph-method}
\alias{role}
\alias{role<-,SpeciesReferenceGlyph-method}
\alias{role<-}
\alias{speciesGlyph,SpeciesReferenceGlyph-method}
\alias{speciesGlyph}
\alias{speciesGlyph<-,SpeciesReferenceGlyph-method}
\alias{speciesGlyph<-}
\alias{speciesReference,SpeciesReferenceGlyph-method}
\alias{speciesReference}
\alias{speciesReference<-,SpeciesReferenceGlyph-method}
\alias{speciesReference<-}
\alias{curve,SpeciesReferenceGlyph-method}
\alias{curve<-,SpeciesReferenceGlyph-method}

\title{SBML type "SpeciesReferenceGlyph"}
\description{A glyph representing a \code{\linkS4class{SpeciesReference}} in an SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SpeciesReferenceGlyph", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{speciesGlyph}:}{Object of class \code{"character"} identifying
    the \code{\linkS4class{SpeciesGlyph}} representing the \code{\linkS4class{Species}}
    that is referenced by the underyling \code{\linkS4class{SpeciesReference}}.}
    \item{\code{speciesReference}:}{Object of class \code{"character"} identifying
    the \code{linkS4class{SpeciesReference}} represented by this glyph.}
    \item{\code{role}:}{Object of class \code{"character"} indicating how this
    glyph should represent the "role" of the underlying \code{\linkS4class{SpeciesReference}}.}
    \item{\code{curve}:}{Object of class \code{"Curve"} describing this glyph
    as a curve (optional).}
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
    \item{role}{\code{signature(object = "SpeciesReferenceGlyph")}: gets the \code{role} slot }
    \item{role<-}{\code{signature(object = "SpeciesReferenceGlyph")}: sets the \code{role} slot }
    \item{speciesGlyph}{\code{signature(object = "SpeciesReferenceGlyph")}: gets the \code{speciesGlyph} slot }
    \item{speciesGlyph<-}{\code{signature(object = "SpeciesReferenceGlyph")}: sets the \code{speciesGlyph} slot }
    \item{speciesReference}{\code{signature(object = "SpeciesReferenceGlyph")}: gets the \code{speciesReference} slot }
    \item{speciesReference<-}{\code{signature(object = "SpeciesReferenceGlyph")}: sets the \code{speciesReference} slot }
    \item{curve}{\code{signature(expr = "SpeciesReferenceGlyph")}: ... }
    \item{curve<-}{\code{signature(object = "SpeciesReferenceGlyph")}: sets the \code{curve} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
