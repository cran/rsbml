setClass("SpeciesConcentrationRule", representation(species = "character"), 
  contains = "AssignmentRule")

setMethod("species", "SpeciesConcentrationRule", function(object) object@species)

setReplaceMethod("species", "SpeciesConcentrationRule", function(object, value) {
  object@species<- value
  object
})
