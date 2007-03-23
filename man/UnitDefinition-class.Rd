\name{UnitDefinition-class}
\docType{class}
\alias{UnitDefinition-class}
\alias{id,UnitDefinition-method}
\alias{id}
\alias{id<-,UnitDefinition-method}
\alias{id<-}
\alias{name,UnitDefinition-method}
\alias{name}
\alias{name<-,UnitDefinition-method}
\alias{name<-}
\alias{units,UnitDefinition-method}
\alias{units}
\alias{units<-,UnitDefinition-method}
\alias{units<-}

\title{SBML type "UnitDefinition"}
\description{Associates one or more \code{\linkS4class{Unit}}s with an ID and name.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("UnitDefinition", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{units}:}{Object of class \code{"list"} containing equivalent
    \code{\linkS4class{Unit}}s that are all associated with the same ID and name.}
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
    \item{id}{\code{signature(object = "UnitDefinition")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "UnitDefinition")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "UnitDefinition")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "UnitDefinition")}: sets the \code{name} slot }
    \item{units}{\code{signature(object = "UnitDefinition")}: gets the \code{units} slot }
    \item{units<-}{\code{signature(object = "UnitDefinition")}: sets the \code{units} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
