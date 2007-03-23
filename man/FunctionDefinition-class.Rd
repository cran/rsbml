\name{FunctionDefinition-class}
\docType{class}
\alias{FunctionDefinition-class}
\alias{id<-,FunctionDefinition-method}
\alias{id,FunctionDefinition-method}
\alias{name<-,FunctionDefinition-method}
\alias{name,FunctionDefinition-method}
\alias{math,FunctionDefinition-method}
\alias{math<-,FunctionDefinition-method}

\title{SBML type "FunctionDefinition"}
\description{Identifies a mathematical expression so that it may be referenced
in other expressions.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("FunctionDefinition", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{math}:}{Object of class \code{"expression"} that defines the function. }
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
    \item{id}{\code{signature(object = "FunctionDefinition")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "FunctionDefinition")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "FunctionDefinition")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "FunctionDefinition")}: sets the \code{name} slot }
    \item{math}{\code{signature(object = "FunctionDefinition")}: gets the \code{math} slot }
    \item{math<-}{\code{signature(object = "FunctionDefinition")}: sets the \code{math} slot }
  }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
