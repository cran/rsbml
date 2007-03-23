\name{ReactionGlyph-class}
\docType{class}
\alias{ReactionGlyph-class}
\alias{curve,ReactionGlyph-method}
\alias{curve}
\alias{curve<-,ReactionGlyph-method}
\alias{curve<-}
\alias{reaction,ReactionGlyph-method}
\alias{reaction}
\alias{reaction<-,ReactionGlyph-method}
\alias{reaction<-}
\alias{speciesReferenceGlyphs,ReactionGlyph-method}
\alias{speciesReferenceGlyphs}
\alias{speciesReferenceGlyphs<-,ReactionGlyph-method}
\alias{speciesReferenceGlyphs<-}

\title{SBML type "ReactionGlyph"}
\description{A glyph representing a \code{\linkS4class{Reaction}} in the SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("ReactionGlyph", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{reaction}:}{Object of class \code{"character"} identifying the reaction
      represented by this glyph.}
    \item{\code{curve}:}{Object of class \code{"Curve"} describing this glyph as
      a curve (optional). }
    \item{\code{speciesReferenceGlyphs}:}{Object of class \code{"list"} containing
    \code{\linkS4class{SpeciesReferenceGlyph}}s that represent the 
    \code{\linkS4class{SpeciesReference}}s of the underlying \code{\linkS4class{Reaction}}.}
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
    \item{curve}{\code{signature(expr = "ReactionGlyph")}: ... }
    \item{curve<-}{\code{signature(object = "ReactionGlyph")}: sets the \code{curve} slot }
    \item{reaction}{\code{signature(object = "ReactionGlyph")}: gets the \code{reaction} slot }
    \item{reaction<-}{\code{signature(object = "ReactionGlyph")}: sets the \code{reaction} slot }
    \item{speciesReferenceGlyphs}{\code{signature(object = "ReactionGlyph")}: gets the \code{speciesReferenceGlyphs} slot }
    \item{speciesReferenceGlyphs<-}{\code{signature(object = "ReactionGlyph")}: sets the \code{speciesReferenceGlyphs} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
