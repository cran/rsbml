\name{SBMLDocument-class}
\docType{class}
\alias{SBMLDocument-class}
\alias{coerce,SBMLDocument,graph-method}
\alias{coerce,SBMLDocument,SBML-method}
\alias{rsbml_check,SBMLDocument-method}
\alias{rsbml_check}
\alias{rsbml_dom,SBMLDocument-method}
\alias{rsbml_dom}
\alias{rsbml_graph,SBMLDocument-method}
\alias{rsbml_graph}
\alias{rsbml_problems,SBMLDocument-method}
\alias{rsbml_problems}
\alias{rsbml_write,SBMLDocument-method}
\alias{rsbml_xml,SBMLDocument-method}
\alias{as.character.SBMLDocument}

\title{SBML type "SBMLDocument"}
\description{Low-level libsbml document structure.}
\section{Instantiation}{A virtual Class: No objects may be created from it.}
\section{Extends}{
Class \code{"\linkS4class{oldClass}"}, directly.
}
\section{Methods}{
  \describe{
    \item{coerce}{\code{signature(from = "SBMLDocument", to = "graph")}: 
    Converts a libsbml document to a \code{\linkS4class{graph}}.}
    \item{coerce}{\code{signature(from = "SBMLDocument", to = "SBML")}: 
      Constructs an S4 object model from a libsbml document.}
    \item{coerce}{\code{signature(from = "SBML", to = "SBMLDocument")}: 
      Converts an S4 object model to a libsbml document.}
    \item{rsbml\_check}{\code{signature(object = "SBMLDocument")}: semantically 
      validates the document. }
    \item{rsbml\_dom}{\code{signature(doc = "SBMLDocument")}: Constructs an S4 
      object model from a libsbml document. }
    \item{rsbml\_graph}{\code{signature(doc = "SBMLDocument")}: Converts a 
      libsbml document to a \code{\linkS4class{graph}}. }
    \item{rsbml\_problems}{\code{signature(object = "SBMLDocument")}: 
      reports problems encountered during parsing and/or validation.}
    \item{rsbml\_write}{\code{signature(object = "SBMLDocument")}: writes this 
      document to a file as SBML. }
    \item{rsbml\_xml}{\code{signature(object = "SBMLDocument")}: converts this 
      document to a string as SBML. }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
