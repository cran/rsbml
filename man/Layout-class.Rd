\name{Layout-class}
\docType{class}
\alias{Layout-class}
\alias{additionalGraphicalObjects,Layout-method}
\alias{additionalGraphicalObjects}
\alias{additionalGraphicalObjects<-,Layout-method}
\alias{additionalGraphicalObjects<-}
\alias{compartmentGlyphs,Layout-method}
\alias{compartmentGlyphs}
\alias{compartmentGlyphs<-,Layout-method}
\alias{compartmentGlyphs<-}
\alias{dimensions,Layout-method}
\alias{dimensions}
\alias{dimensions<-,Layout-method}
\alias{dimensions<-}
\alias{reactionGlyphs,Layout-method}
\alias{reactionGlyphs}
\alias{reactionGlyphs<-,Layout-method}
\alias{reactionGlyphs<-}
\alias{speciesGlyphs,Layout-method}
\alias{speciesGlyphs}
\alias{speciesGlyphs<-,Layout-method}
\alias{speciesGlyphs<-}
\alias{textGlyphs,Layout-method}
\alias{textGlyphs}
\alias{textGlyphs<-,Layout-method}
\alias{textGlyphs<-}
\alias{id,Layout-method}
\alias{id<-,Layout-method}

\title{SBML type "Layout"}
\description{Contains the glyphs and other graphical objects that compose an SBML layout.
Layouts are not part of the core SBML specification. See the reference for the 
SBML layout extension specification.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Layout", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{dimensions}:}{Object of class \code{"Dimensions"} specifing the
    size of the layout.}
    \item{\code{compartmentGlyphs}:}{Object of class \code{"list"} containing the
    \code{\linkS4class{CompartmentGlyph}}s.}
    \item{\code{speciesGlyphs}:}{Object of class \code{"list"} containing the
    \code{\linkS4class{SpeciesGlyph}}s. }
    \item{\code{reactionGlyphs}:}{Object of class \code{"list"} containing the
    \code{\linkS4class{ReactionGlyph}}s. }
    \item{\code{textGlyphs}:}{Object of class \code{"list"} containing the
    \code{\linkS4class{TextGlyph}}s. }
    \item{\code{additionalGraphicalObjects}:}{Object of class \code{"list"} containing the
    additional \code{\linkS4class{GraphicalObject}}s that are not bound to any model component.  }
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
    \item{id}{\code{signature(object = "Layout")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Layout")}: sets the \code{id} slot }
    \item{additionalGraphicalObjects}{\code{signature(object = "Layout")}: gets the \code{additionalGraphicalObjects} slot }
    \item{additionalGraphicalObjects<-}{\code{signature(object = "Layout")}: sets the \code{additionalGraphicalObjects} slot }
    \item{compartmentGlyphs}{\code{signature(object = "Layout")}: gets the \code{compartmentGlyphs} slot }
    \item{compartmentGlyphs<-}{\code{signature(object = "Layout")}: sets the \code{compartmentGlyphs} slot }
    \item{dimensions}{\code{signature(object = "Layout")}: gets the \code{dimensions} slot }
    \item{dimensions<-}{\code{signature(object = "Layout")}: sets the \code{dimensions} slot }
    \item{reactionGlyphs}{\code{signature(object = "Layout")}: gets the \code{reactionGlyphs} slot }
    \item{reactionGlyphs<-}{\code{signature(object = "Layout")}: sets the \code{reactionGlyphs} slot }
    \item{speciesGlyphs}{\code{signature(object = "Layout")}: gets the \code{speciesGlyphs} slot }
    \item{speciesGlyphs<-}{\code{signature(object = "Layout")}: sets the \code{speciesGlyphs} slot }
    \item{textGlyphs}{\code{signature(object = "Layout")}: gets the \code{textGlyphs} slot }
    \item{textGlyphs<-}{\code{signature(object = "Layout")}: sets the \code{textGlyphs} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
