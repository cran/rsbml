\name{SBML-class}
\docType{class}
\alias{SBML-class}
\alias{coerce,SBML,SBMLDocument-method}
\alias{coerce}
\alias{level,SBML-method}
\alias{level}
\alias{level<-,SBML-method}
\alias{level<-}
\alias{model,SBML-method}
\alias{model}
\alias{model<-,SBML-method}
\alias{model<-}
\alias{rsbml_doc,SBML-method}
\alias{rsbml_doc}
\alias{rsbml_write,SBML-method}
\alias{rsbml_write}
\alias{rsbml_xml,SBML-method}
\alias{rsbml_xml}
\alias{ver,SBML-method}
\alias{ver}
\alias{ver<-,SBML-method}
\alias{ver<-}
\alias{as.character.SBML}

\title{SBML type "SBML"}
\description{The root element of an SBML document. An actual SBML 
  \code{\linkS4class{Model}} may be retrieved from an instance of this class.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SBML", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{level}:}{Object of class \code{"integer"} indicating the
      level of the SBML standard (currently at 2). }
    \item{\code{ver}:}{Object of class \code{"integer"} indicating the
      version of the level (currently at 2 for level 2). }
    \item{\code{model}:}{Object of class \code{"Model"} the SBML model itself. }
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
    \item{coerce}{\code{signature(from = "SBMLDocument", to = "SBML")}: 
      constructs the S4 object model from a low-level libsbml document.}
    \item{coerce}{\code{signature(from = "SBML", to = "SBMLDocument")}: 
      converts the S4 object model to a low-level libsbml document. }
    \item{level}{\code{signature(object = "SBML")}: gets the \code{level} slot }
    \item{level<-}{\code{signature(object = "SBML")}: sets the \code{level} slot }
    \item{model}{\code{signature(object = "SBML")}: gets the \code{model} slot }
    \item{model<-}{\code{signature(object = "SBML")}: sets the \code{model} slot }
    \item{rsbml\_doc}{\code{signature(model = "SBML")}: converts the S4 object model
      to a low-level libsbml document.}
    \item{rsbml\_write}{\code{signature(object = "SBML")}: writes this document
      to a file as SBML.}
    \item{rsbml\_xml}{\code{signature(object = "SBML")}: converts this document
      to a string as SBML.}
    \item{ver}{\code{signature(object = "SBML")}: gets the \code{ver} slot }
    \item{ver<-}{\code{signature(object = "SBML")}: sets the \code{ver} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
