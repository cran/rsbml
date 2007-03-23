setClass("Rule", representation(math = "expression"), contains = c("SBase", "VIRTUAL"))

 setGeneric("math", function(object) standardGeneric("math"))
setMethod("math", "Rule", function(object) object@math)

 setGeneric("math<-", function(object, value) standardGeneric("math<-"))
setReplaceMethod("math", "Rule", function(object, value) {
  object@math <- as.expression(value)
  object
})

