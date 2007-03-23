\name{TextGlyph-class}
\docType{class}
\alias{TextGlyph-class}
\alias{graphicalObject,TextGlyph-method}
\alias{graphicalObject}
\alias{graphicalObject<-,TextGlyph-method}
\alias{graphicalObject<-}
\alias{originOfText,TextGlyph-method}
\alias{originOfText}
\alias{originOfText<-,TextGlyph-method}
\alias{originOfText<-}
\alias{text,TextGlyph-method}
\alias{text}
\alias{text<-,TextGlyph-method}
\alias{text<-}

\title{SBML type "TextGlyph"}
\description{A run of text in an SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("TextGlyph", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{graphicalObject}:}{Object of class \code{"character"} identifying
    the \code{\linkS4class{GraphicalObject}} that this glyph labels (optional).}
    \item{\code{text}:}{Object of class \code{"character"} containing the text
    shown by the glyph (mutually exclusive with \code{originOfText}).}
    \item{\code{originOfText}:}{Object of class \code{"character"} identifying
    an SBML component whose name is used as the text (mutually exclusive with \code{text}).}
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
    \item{graphicalObject}{\code{signature(object = "TextGlyph")}: gets the \code{graphicalObject} slot }
    \item{graphicalObject<-}{\code{signature(object = "TextGlyph")}: sets the \code{graphicalObject} slot }
    \item{originOfText}{\code{signature(object = "TextGlyph")}: gets the \code{originOfText} slot }
    \item{originOfText<-}{\code{signature(object = "TextGlyph")}: sets the \code{originOfText} slot }
    \item{text}{\code{signature(x = "TextGlyph")}: ... }
    \item{text<-}{\code{signature(object = "TextGlyph")}: sets the \code{text} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
