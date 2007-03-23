\name{SpeciesGlyph-class}
\docType{class}
\alias{SpeciesGlyph-class}
\alias{species,SpeciesGlyph-method}
\alias{species}
\alias{species<-,SpeciesGlyph-method}
\alias{species<-}

\title{SBML type "SpeciesGlyph"}
\description{	A glyph representing a \code{\linkS4class{Species}} in an SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SpeciesGlyph", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{species}:}{Object of class \code{"character"} identifying the species
      this glyph represents.}
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
    \item{species}{\code{signature(object = "SpeciesGlyph")}: gets the \code{species} slot }
    \item{species<-}{\code{signature(object = "SpeciesGlyph")}: sets the \code{species} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
