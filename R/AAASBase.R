setClass("SBase", representation(metaId = "character", notes = "character", annotation = "character"), 
  contains=("VIRTUAL"))
  
setGeneric("metaId", function(object) standardGeneric("metaId"))
setMethod("metaId", "SBase", function(object) object@metaId)

setGeneric("notes", function(object) standardGeneric("notes"))
setMethod("notes", "SBase", function(object) object@notes)

setGeneric("annotation", function(object) standardGeneric("annotation"))
setMethod("annotation", "SBase", function(object) object@annotation)

setGeneric("metaId<-",
           function(object, value) standardGeneric("metaId<-"))
setReplaceMethod("metaId", "SBase", function(object, value) {
    object@metaId <- value
    object
})

setGeneric("notes<-",
           function(object, value) standardGeneric("notes<-"))
setReplaceMethod("notes", "SBase", function(object, value) {
    object@notes <- value
    object
})

setGeneric("annotation<-",
           function(object, value) standardGeneric("annotation<-"))
setReplaceMethod("annotation", "SBase", function(object, value) {
    object@annotation <- value
    object
})
