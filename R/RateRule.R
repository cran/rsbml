setClass("RateRule", representation(variable = "character"), 
  contains = "Rule")
  
setMethod("variable", "RateRule", function(object) object@variable)

setReplaceMethod("variable", "RateRule", function(object, value) {
  object@variable <- value
  object
})

