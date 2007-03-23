\name{Compartment-class}
\docType{class}
\alias{Compartment-class}
\alias{outside,Compartment-method}
\alias{outside}
\alias{outside<-,Compartment-method}
\alias{outside<-}
\alias{size,Compartment-method}
\alias{size}
\alias{size<-,Compartment-method}
\alias{size<-}
\alias{spatialDimensions,Compartment-method}
\alias{spatialDimensions}
\alias{spatialDimensions<-,Compartment-method}
\alias{spatialDimensions<-}
\alias{id<-,Compartment-method}
\alias{id,Compartment-method}
\alias{name<-,Compartment-method}
\alias{name,Compartment-method}
\alias{constant<-,Compartment-method}
\alias{constant,Compartment-method}
\alias{units<-,Compartment-method}
\alias{units,Compartment-method}

\title{SBML type "Compartment"}
\description{A bounded space that contains \code{\linkS4class{Species}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Compartment", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{spatialDimensions}:}{Object of class \code{"integer"} indicating 
    the number of dimensions (0, 1, 2, or 3)}
    \item{\code{size}:}{Object of class \code{"numeric"} indicating the size in
    the given units. }
    \item{\code{units}:}{Object of class \code{"character"} indicating the units
    (built-in or the id of a \code{\linkS4class{UnitDefinition}}). }
    \item{\code{outside}:}{Object of class \code{"character"} identifying the
    compartment containing this compartment.}
    \item{\code{constant}:}{Object of class \code{"logical"} indicating whether 
    the size changes during simulation.}
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
    \item{id}{\code{signature(object = "Compartment")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Compartment")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Compartment")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Compartment")}: sets the \code{name} slot }
    \item{constant}{\code{signature(object = "Compartment")}: gets the \code{constant} slot }
    \item{constant<-}{\code{signature(object = "Compartment")}: sets the \code{constant} slot }
    \item{outside}{\code{signature(object = "Compartment")}: gets the \code{outside} slot }
    \item{outside<-}{\code{signature(object = "Compartment")}: sets the \code{outside} slot }
    \item{size}{\code{signature(object = "Compartment")}: gets the \code{size} slot }
    \item{size<-}{\code{signature(object = "Compartment")}: sets the \code{size} slot }
    \item{units}{\code{signature(object = "Compartment")}: gets the \code{constant} slot }
    \item{units<-}{\code{signature(object = "Compartment")}: sets the \code{constant} slot }
    \item{spatialDimensions}{\code{signature(object = "Compartment")}: gets the \code{spatialDimensions} slot }
    \item{spatialDimensions<-}{\code{signature(object = "Compartment")}: sets the \code{spatialDimensions} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
