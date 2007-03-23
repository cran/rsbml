setClass("GraphicalObject", representation(id = "character", boundingBox = "BoundingBox"), 
  contains = "SBase")

setMethod("id", "GraphicalObject", function(object) object@id)

 setGeneric("boundingBox", function(object) standardGeneric("boundingBox"))
setMethod("boundingBox", "GraphicalObject", function(object) object@boundingBox)

 
setReplaceMethod("id", "GraphicalObject", function(object, value) {
  object@id <- value
  object
})

 setGeneric("boundingBox<-", function(object, value) standardGeneric("boundingBox<-"))
setReplaceMethod("boundingBox", "GraphicalObject", function(object, value) {
  object@boundingBox <- value
  object
})

