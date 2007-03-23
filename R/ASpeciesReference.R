setClass("SpeciesReference", representation(stoichiometry = "numeric", 
  stoichiometryMath = "StoichiometryMath"), 
  prototype = list(stoichiometry = 1, stoichiometryMath = NULL), 
  contains = "SimpleSpeciesReference")

 setGeneric("stoichiometry", function(object) standardGeneric("stoichiometry"))
setMethod("stoichiometry", "SpeciesReference", function(object) object@stoichiometry)

 setGeneric("stoichiometryMath", function(object) standardGeneric("stoichiometryMath"))
setMethod("stoichiometryMath", "SpeciesReference", function(object) object@stoichiometryMath)

 setGeneric("stoichiometry<-", function(object, value) standardGeneric("stoichiometry<-"))
setReplaceMethod("stoichiometry", "SpeciesReference", function(object, value) {
  object@stoichiometry <- value
  object
})

 setGeneric("stoichiometryMath<-", function(object, value) standardGeneric("stoichiometryMath<-"))
setReplaceMethod("stoichiometryMath", "SpeciesReference", function(object, value) {
  if (is.null(value))
    new("SpeciesReference", notes = notes(object), annotation = annotation(object),
      metaId = metaId(object), id = id(object), species = species(object), 
      stoichiometry = stoichiometry(object))
  else {
    object@stoichiometryMath <- as.expression(value)
    object
  }
})

