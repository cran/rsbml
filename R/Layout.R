setClass("Layout", representation(id = "character", dimensions = "Dimensions", 
  compartmentGlyphs = "list", speciesGlyphs = "list", reactionGlyphs = "list", 
  textGlyphs = "list", additionalGraphicalObjects = "list"), contains = "SBase")

setMethod("id", "Layout", function(object) object@id)

setMethod("dimensions", "Layout", function(object) object@dimensions)

 setGeneric("compartmentGlyphs", function(object) standardGeneric("compartmentGlyphs"))
setMethod("compartmentGlyphs", "Layout", function(object) object@compartmentGlyphs)

 setGeneric("speciesGlyphs", function(object) standardGeneric("speciesGlyphs"))
setMethod("speciesGlyphs", "Layout", function(object) object@speciesGlyphs)

 setGeneric("reactionGlyphs", function(object) standardGeneric("reactionGlyphs"))
setMethod("reactionGlyphs", "Layout", function(object) object@reactionGlyphs)

 setGeneric("textGlyphs", function(object) standardGeneric("textGlyphs"))
setMethod("textGlyphs", "Layout", function(object) object@textGlyphs)

 setGeneric("additionalGraphicalObjects", function(object) standardGeneric("additionalGraphicalObjects"))
setMethod("additionalGraphicalObjects", "Layout", function(object) object@additionalGraphicalObjects)

setReplaceMethod("id", "Layout", function(object, value) {
  object@id <- value
  object
})

setReplaceMethod("dimensions", "Layout", function(object, value) {
  object@dimensions <- value
  object
})

 setGeneric("compartmentGlyphs<-", function(object, value) standardGeneric("compartmentGlyphs<-"))
setReplaceMethod("compartmentGlyphs", "Layout", function(object, value) {
  if (!all(sapply(value, inherits, "CompartmentGlyph")))
    stop("All compartment glyphs must be CompartmentGlyph objects")
  object@compartmentGlyphs <- value
  object
})

 setGeneric("speciesGlyphs<-", function(object, value) standardGeneric("speciesGlyphs<-"))
setReplaceMethod("speciesGlyphs", "Layout", function(object, value) {
  if (!all(sapply(value, inherits, "SpeciesGlyph")))
    stop("All species glyphs must be SpeciesGlyph objects")
  object@speciesGlyphs <- value
  object
})

 setGeneric("reactionGlyphs<-", function(object, value) standardGeneric("reactionGlyphs<-"))
setReplaceMethod("reactionGlyphs", "Layout", function(object, value) {
  if (!all(sapply(value, inherits, "ReactionGlyph")))
    stop("All reaction glyphs must be ReactionGlyph objects")
  object@reactionGlyphs <- value
  object
})

 setGeneric("textGlyphs<-", function(object, value) standardGeneric("textGlyphs<-"))
setReplaceMethod("textGlyphs", "Layout", function(object, value) {
  if (!all(sapply(value, inherits, "TextGlyph")))
    stop("All text glyphs must be TextGlyph objects")
  object@textGlyphs <- value
  object
})

 setGeneric("additionalGraphicalObjects<-", function(object, value) standardGeneric("additionalGraphicalObjects<-"))
setReplaceMethod("additionalGraphicalObjects", "Layout", function(object, value) {
  if (!all(sapply(value, inherits, "GraphicalObject")))
    stop("All additional graphical objects must be GraphicalObject objects")
  object@additionalGraphicalObjects <- value
  object
})

