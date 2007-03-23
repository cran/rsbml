setClass("AssignmentRule", representation(variable = "character", type = "character"), 
  contains = "Rule")

setGeneric("type", function(object) standardGeneric("type"))
setMethod("type", "AssignmentRule", function(object) object@type)

setGeneric("type<-", function(object, value) standardGeneric("type<-"))
setReplaceMethod("type", "AssignmentRule", function(object, value) {
  if (!(type %in% c("rate", "scalar")))
    stop("Rule type must be either 'rate' or 'scalar', not ", type)
  object@type <- value
  object
})

setMethod("variable", "AssignmentRule", function(object) object@variable)

setReplaceMethod("variable", "AssignmentRule", function(object, value) {
  object@variable <- value
  object
})

