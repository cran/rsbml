setClass("SpeciesReferenceGlyph", representation(speciesGlyph = "character", 
  speciesReference = "character", role = "character", curve = "Curve"), 
  prototype = list(role = "undefined", curve = NULL), contains = "GraphicalObject")

 setGeneric("speciesGlyph", function(object) standardGeneric("speciesGlyph"))
setMethod("speciesGlyph", "SpeciesReferenceGlyph", function(object) object@speciesGlyph)

 setGeneric("speciesReference", function(object) standardGeneric("speciesReference"))
setMethod("speciesReference", "SpeciesReferenceGlyph", function(object) object@speciesReference)

 setGeneric("role", function(object) standardGeneric("role"))
setMethod("role", "SpeciesReferenceGlyph", function(object) object@role)

setGeneric("curve", function(expr, from, to, n, add, type, ylab, log, xlim, ...) 
  standardGeneric("curve"))
setMethod("curve", "SpeciesReferenceGlyph", 
  function(expr, from, to, n, add, type, ylab, log, xlim, ...) expr@curve)

 setGeneric("speciesGlyph<-", function(object, value) standardGeneric("speciesGlyph<-"))
setReplaceMethod("speciesGlyph", "SpeciesReferenceGlyph", function(object, value) {
  object@speciesGlyph <- value
  object
})

 setGeneric("speciesReference<-", function(object, value) standardGeneric("speciesReference<-"))
setReplaceMethod("speciesReference", "SpeciesReferenceGlyph", function(object, value) {
  object@speciesReference <- value
  object
})

.validRoles <- c("substrate", "product", "sidesubstrate", "sideproduct", "modifier",
  "activator", "inhibitor", "undefined")
  
 setGeneric("role<-", function(object, value) standardGeneric("role<-"))
setReplaceMethod("role", "SpeciesReferenceGlyph", function(object, value) {
  if (!(role %in% .validRoles))
    stop("Role must be one of ", paste(.validRoles, collapse=","), ".")
  object@role <- value
  object
})

 setGeneric("curve<-", function(object, value) standardGeneric("curve<-"))
setReplaceMethod("curve", "SpeciesReferenceGlyph", function(object, value) {
  if (is.null(value))
    object <- new("SpeciesReferenceGlyph", speciesGlyph = speciesGlyph(object),
      speciesReference = speciesReference(object), role = role(object))
  object@curve <- value
  object
})


