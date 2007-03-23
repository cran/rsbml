\name{EventAssignment-class}
\docType{class}
\alias{EventAssignment-class}
\alias{variable,EventAssignment-method}
\alias{variable<-,EventAssignment-method}
\alias{math,EventAssignment-method}
\alias{math<-,EventAssignment-method}

\title{SBML type "EventAssignment"}
\description{As part of an event, assigns a value to the quantity of a 
\code{\linkS4class{Species}}, the size of a \code{\linkS4class{Compartment}} 
or the value of a \code{\linkS4class{Parameter}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("EventAssignment", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{variable}:}{Object of class \code{"character"} ~~ }
    \item{\code{math}:}{Object of class \code{"expression"} that evaluates to
    the value to assign. }
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
    \item{math}{\code{signature(object = "EventAssignment")}: gets the \code{math} slot }
    \item{math<-}{\code{signature(object = "EventAssignment")}: sets the \code{math} slot }
    \item{variable}{\code{signature(object = "EventAssignment")}: gets the \code{variable} slot }
    \item{variable<-}{\code{signature(object = "EventAssignment")}: sets the \code{variable} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
