setClass("SimpleSpeciesReference", representation(id = "character", species = "character"), 
  contains = "SBase")

 
setMethod("id", "SimpleSpeciesReference", function(object) object@id)

 
setReplaceMethod("id", "SimpleSpeciesReference", function(object, value) {
  object@id <- value
  object
})

setGeneric("species", function(object) standardGeneric("species"))
setMethod("species", "SimpleSpeciesReference", function(object) object@species)

setGeneric("species<-", function(object, value) standardGeneric("species<-"))
setReplaceMethod("species", "SimpleSpeciesReference", function(object, value) {
  object@species<- value
  object
})
