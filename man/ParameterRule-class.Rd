\name{ParameterRule-class}
\docType{class}
\alias{ParameterRule-class}
\alias{units,ParameterRule-method}
\alias{units<-,ParameterRule-method}
\alias{name,ParameterRule-method}
\alias{name<-,ParameterRule-method}
\alias{variable,ParameterRule-method}
\alias{variable<-,ParameterRule-method}
\alias{math,ParameterRule-method}
\alias{math<-,ParameterRule-method}
\alias{type,ParameterRule-method}
\alias{type<-,ParameterRule-method}

\title{SBML type "ParameterRule"}
\description{\strong{Obsolete} rule that controls the value of a \code{\linkS4class{Parameter}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("ParameterRule", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{units}:}{Object of class \code{"character"} identifying the units
    of the assigned value. }
    \item{\code{variable}:}{Object of class \code{"character"}, ignored. }
    \item{\code{type}:}{Object of class \code{"character"}, deprecated. }
    \item{\code{math}:}{Object of class \code{"expression"} specifying the equation. }
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
Class \code{"\linkS4class{AssignmentRule}"}, directly.
Class \code{"\linkS4class{Rule}"}, by class "AssignmentRule", distance 2.
Class \code{"\linkS4class{SBase}"}, by class "AssignmentRule", distance 3.
}
\section{Methods}{
  \describe{
    \item{name}{\code{signature(object = "Parameter")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Parameter")}: sets the \code{name} slot }
    \item{units}{\code{signature(object = "Parameter")}: gets the \code{units} slot }
    \item{units<-}{\code{signature(object = "Parameter")}: sets the \code{units} slot }
    \item{variable}{\code{signature(object = "Parameter")}: gets the \code{variable} slot }
    \item{variable<-}{\code{signature(object = "Parameter")}: sets the \code{variable} slot }
    \item{type}{\code{signature(object = "Parameter")}: gets the \code{type} slot }
    \item{type<-}{\code{signature(object = "Parameter")}: sets the \code{type} slot }
    \item{math}{\code{signature(object = "Parameter")}: gets the \code{math} slot }
    \item{math<-}{\code{signature(object = "Parameter")}: sets the \code{math} slot }
  }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
