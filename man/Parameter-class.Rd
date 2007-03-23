\name{Parameter-class}
\docType{class}
\alias{Parameter-class}
\alias{value,Parameter-method}
\alias{value}
\alias{value<-,Parameter-method}
\alias{value<-}
\alias{id<-,Parameter-method}
\alias{id,Parameter-method}
\alias{name<-,Parameter-method}
\alias{name,Parameter-method}
\alias{units<-,Parameter-method}
\alias{units,Parameter-method}
\alias{constant<-,Parameter-method}
\alias{constant,Parameter-method}

\title{SBML type "Parameter"}
\description{Declares a variable to be used in a mathematical expression.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Parameter", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{value}:}{Object of class \code{"numeric"} specifying the initial value. }
    \item{\code{units}:}{Object of class \code{"character"} identifying the units. }
    \item{\code{constant}:}{Object of class \code{"logical"} indicating whether
      the value of this parameter is constant.}
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
    \item{id}{\code{signature(object = "Parameter")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Parameter")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Parameter")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Parameter")}: sets the \code{name} slot }
    \item{units}{\code{signature(object = "Parameter")}: gets the \code{units} slot }
    \item{units<-}{\code{signature(object = "Parameter")}: sets the \code{units} slot }
    \item{constant}{\code{signature(object = "Parameter")}: gets the \code{constant} slot }
    \item{constant<-}{\code{signature(object = "Parameter")}: sets the \code{constant} slot }
    \item{value}{\code{signature(object = "Parameter")}: gets the \code{value} slot }
    \item{value<-}{\code{signature(object = "Parameter")}: sets the \code{value} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
