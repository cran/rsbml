\name{Reaction-class}
\docType{class}
\alias{Reaction-class}
\alias{fast,Reaction-method}
\alias{fast}
\alias{fast<-,Reaction-method}
\alias{fast<-}
\alias{kineticLaw,Reaction-method}
\alias{kineticLaw}
\alias{kineticLaw<-,Reaction-method}
\alias{kineticLaw<-}
\alias{modifiers,Reaction-method}
\alias{modifiers}
\alias{modifiers<-,Reaction-method}
\alias{modifiers<-}
\alias{products,Reaction-method}
\alias{products}
\alias{products<-,Reaction-method}
\alias{products<-}
\alias{reactants,Reaction-method}
\alias{reactants}
\alias{reactants<-,Reaction-method}
\alias{reactants<-}
\alias{reversible,Reaction-method}
\alias{reversible}
\alias{reversible<-,Reaction-method}
\alias{reversible<-}
\alias{id,Reaction-method}
\alias{id<-,Reaction-method}
\alias{name,Reaction-method}
\alias{name<-,Reaction-method}

\title{SBML type "Reaction"}
\description{Any transformation, transportation or binding process that changes the
quantity of one or more \code{\linkS4class{Species}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Reaction", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{reactants}:}{Object of class \code{"list"} containing 
      \code{\linkS4class{SpeciesReference}}s specifying the 
      \code{\linkS4class{Species}} that are reactants for this reaction.}
    \item{\code{products}:}{Object of class \code{"list"} containing 
      \code{\linkS4class{SpeciesReference}}s specifying the 
      \code{\linkS4class{Species}} that are products for this reaction. }
    \item{\code{modifiers}:}{Object of class \code{"list"} containing 
      \code{\linkS4class{ModifierSpeciesReference}}s specifying the 
      \code{\linkS4class{Species}} that are modifiers for this reaction. }
    \item{\code{kineticLaw}:}{Object of class \code{"KineticLaw"} that dynamically 
      defines the rate of the reaction.}
    \item{\code{reversible}:}{Object of class \code{"logical"} indicating whether
      the direction of this reaction is reversible.}
    \item{\code{fast}:}{Object of class \code{"logical"} indicating whether 
      this reaction should be considered instantaneous relative to non-fast reactions.}
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
    \item{id}{\code{signature(object = "Reaction")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Reaction")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Reaction")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Reaction")}: sets the \code{name} slot }
    \item{fast}{\code{signature(object = "Reaction")}: gets the \code{fast} slot }
    \item{fast<-}{\code{signature(object = "Reaction")}: sets the \code{fast} slot }
    \item{kineticLaw}{\code{signature(object = "Reaction")}: gets the \code{kineticLaw} slot }
    \item{kineticLaw<-}{\code{signature(object = "Reaction")}: sets the \code{kineticLaw} slot }
    \item{modifiers}{\code{signature(object = "Reaction")}: gets the \code{modifiers} slot }
    \item{modifiers<-}{\code{signature(object = "Reaction")}: sets the \code{modifiers} slot }
    \item{products}{\code{signature(object = "Reaction")}: gets the \code{products} slot }
    \item{products<-}{\code{signature(object = "Reaction")}: sets the \code{products} slot }
    \item{reactants}{\code{signature(object = "Reaction")}: gets the \code{reactants} slot }
    \item{reactants<-}{\code{signature(object = "Reaction")}: sets the \code{reactants} slot }
    \item{reversible}{\code{signature(object = "Reaction")}: gets the \code{reversible} slot }
    \item{reversible<-}{\code{signature(object = "Reaction")}: sets the \code{reversible} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
