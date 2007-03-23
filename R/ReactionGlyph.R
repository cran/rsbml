setClass("ReactionGlyph", representation(reaction = "character", curve = "Curve", 
  speciesReferenceGlyphs = "list"), prototype = list(curve = NULL), contains = "GraphicalObject")

 setGeneric("reaction", function(object) standardGeneric("reaction"))
setMethod("reaction", "ReactionGlyph", function(object) object@reaction)

setMethod("curve", "ReactionGlyph", 
  function(expr, from, to, n, add, type, ylab, log, xlim, ...) expr@curve)

 setGeneric("speciesReferenceGlyphs", function(object) standardGeneric("speciesReferenceGlyphs"))
setMethod("speciesReferenceGlyphs", "ReactionGlyph", function(object) object@speciesReferenceGlyphs)

 setGeneric("reaction<-", function(object, value) standardGeneric("reaction<-"))
setReplaceMethod("reaction", "ReactionGlyph", function(object, value) {
  object@reaction <- value
  object
})

setReplaceMethod("curve", "ReactionGlyph", function(object, value) {
  if (is.null(value))
    object <- new("ReactionGlyph", reaction = reaction(object), 
      speciesReferenceGlyphs = speciesReferenceGlyphs(object))
  object@curve <- value
  object
})

 setGeneric("speciesReferenceGlyphs<-", function(object, value) standardGeneric("speciesReferenceGlyphs<-"))
setReplaceMethod("speciesReferenceGlyphs", "ReactionGlyph", function(object, value) {
  if (!all(sapply(value, inherits, "SpeciesReferenceGlyph")))
    stop("All species reference glyphs must be SpeciesReferenceGlyph objects")
  object@speciesReferenceGlyphs <- value
  object
})

