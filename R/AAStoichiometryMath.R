setClass("StoichiometryMath", representation(math = "expression"), contains = "SBase")

setMethod("math", "StoichiometryMath", function(object) object@math)

setReplaceMethod("math", "StoichiometryMath", function(object, value) {
  object@math <- as.expression(value)
  object
})

