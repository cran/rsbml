\name{SimpleSpeciesReference-class}
\docType{class}
\alias{SimpleSpeciesReference-class}
\alias{id,SimpleSpeciesReference-method}
\alias{id<-,SimpleSpeciesReference-method}
\alias{species,SimpleSpeciesReference-method}
\alias{species<-,SimpleSpeciesReference-method}

\title{SBML type "SimpleSpeciesReference"}
\description{Base class for bindings between a \code{\linkS4class{Species}} and 
a \code{\linkS4class{Reaction}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SimpleSpeciesReference", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{species}:}{Object of class \code{"character"} identifying the
      \code{\linkS4class{Species}} being referenced.}
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
    \item{id}{\code{signature(object = "SpeciesGlyph")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "SpeciesGlyph")}: sets the \code{id} slot }
    \item{species}{\code{signature(object = "SpeciesGlyph")}: gets the \code{species} slot }
    \item{species<-}{\code{signature(object = "SpeciesGlyph")}: sets the \code{species} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
