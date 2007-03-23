\name{Model-class}
\docType{class}
\alias{Model-class}
\alias{compartments,Model-method}
\alias{compartments}
\alias{compartments<-,Model-method}
\alias{compartments<-}
\alias{events,Model-method}
\alias{events}
\alias{events<-,Model-method}
\alias{events<-}
\alias{functionDefinitions,Model-method}
\alias{functionDefinitions}
\alias{functionDefinitions<-,Model-method}
\alias{functionDefinitions<-}
\alias{layouts,Model-method}
\alias{layouts}
\alias{layouts<-,Model-method}
\alias{layouts<-}
\alias{parameters,Model-method}
\alias{parameters}
\alias{parameters<-,Model-method}
\alias{parameters<-}
\alias{reactions,Model-method}
\alias{reactions}
\alias{reactions<-,Model-method}
\alias{reactions<-}
\alias{rules,Model-method}
\alias{rules}
\alias{rules<-,Model-method}
\alias{rules<-}
\alias{unitDefinitions,Model-method}
\alias{unitDefinitions}
\alias{unitDefinitions<-,Model-method}
\alias{unitDefinitions<-}
\alias{id,Model-method}
\alias{id<-,Model-method}
\alias{name,Model-method}
\alias{name<-,Model-method}
\alias{species,Model-method}
\alias{species<-,Model-method}

\title{SBML type "Model"}
\description{The central SBML element. Contains the \code{\linkS4class{Species}},
\code{\linkS4class{Reaction}}s, \code{\linkS4class{Compartment}}s and other
components of the model. See the SBML specification, at the reference, for
further details.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Model", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{functionDefinitions}:}{Object of class \code{"list"} containing
      \code{\linkS4class{FunctionDefinition}}s.}
    \item{\code{unitDefinitions}:}{Object of class \code{"list"} containing
      \code{\linkS4class{UnitDefinition}}s. }
    \item{\code{compartments}:}{Object of class \code{"list"} containing
      \code{\linkS4class{Compartment}}s. }
    \item{\code{species}:}{Object of class \code{"list"} containing
      \code{\linkS4class{Species}}s. }
    \item{\code{parameters}:}{Object of class \code{"list"} containing
      \code{\linkS4class{Parameter}}s. }
    \item{\code{rules}:}{Object of class \code{"list"} containing
      \code{\linkS4class{Rule}}s. }
    \item{\code{reactions}:}{Object of class \code{"list"} containing
      \code{\linkS4class{Reaction}}s. }
    \item{\code{events}:}{Object of class \code{"list"} containing
    \code{\linkS4class{Event}}s. }
    \item{\code{layouts}:}{Object of class \code{"list"} containing
    \code{\linkS4class{Layout}}s. }
  }
}
\section{Methods}{
  \describe{
    \item{id}{\code{signature(object = "Model")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Model")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Model")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Model")}: sets the \code{name} slot }
    \item{compartments}{\code{signature(object = "Model")}: gets the \code{compartments} slot }
    \item{compartments<-}{\code{signature(object = "Model")}: sets the \code{compartments} slot }
    \item{events}{\code{signature(object = "Model")}: gets the \code{events} slot }
    \item{events<-}{\code{signature(object = "Model")}: sets the \code{events} slot }
    \item{functionDefinitions}{\code{signature(object = "Model")}: gets the \code{functionDefinitions} slot }
    \item{functionDefinitions<-}{\code{signature(object = "Model")}: sets the \code{functionDefinitions} slot }
    \item{layouts}{\code{signature(object = "Model")}: gets the \code{layouts} slot }
    \item{layouts<-}{\code{signature(object = "Model")}: sets the \code{layouts} slot }
    \item{parameters}{\code{signature(object = "Model")}: gets the \code{parameters} slot }
    \item{parameters<-}{\code{signature(object = "Model")}: sets the \code{parameters} slot }
    \item{species}{\code{signature(object = "Model")}: gets the \code{species} slot }
    \item{species<-}{\code{signature(object = "Model")}: sets the \code{species} slot }
    \item{reactions}{\code{signature(object = "Model")}: gets the \code{reactions} slot }
    \item{reactions<-}{\code{signature(object = "Model")}: sets the \code{reactions} slot }
    \item{rules}{\code{signature(object = "Model")}: gets the \code{rules} slot }
    \item{rules<-}{\code{signature(object = "Model")}: sets the \code{rules} slot }
    \item{unitDefinitions}{\code{signature(object = "Model")}: gets the \code{unitDefinitions} slot }
    \item{unitDefinitions<-}{\code{signature(object = "Model")}: sets the \code{unitDefinitions} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
