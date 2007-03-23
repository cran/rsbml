setClass("Model", representation(id = "character", name = "character", functionDefinitions = "list", 
  unitDefinitions = "list", compartments = "list", species = "list", parameters = "list", 
  rules = "list", reactions = "list", events = "list", layouts = "list"))

 
setMethod("id", "Model", function(object) object@id)

 
setMethod("name", "Model", function(object) object@name)

 setGeneric("functionDefinitions", function(object) standardGeneric("functionDefinitions"))
setMethod("functionDefinitions", "Model", function(object) object@functionDefinitions)

 setGeneric("unitDefinitions", function(object) standardGeneric("unitDefinitions"))
setMethod("unitDefinitions", "Model", function(object) object@unitDefinitions)

 setGeneric("compartments", function(object) standardGeneric("compartments"))
setMethod("compartments", "Model", function(object) object@compartments)

setMethod("species", "Model", function(object) object@species)

setMethod("parameters", "Model", function(object) object@parameters)

 setGeneric("rules", function(object) standardGeneric("rules"))
setMethod("rules", "Model", function(object) object@rules)

 setGeneric("reactions", function(object) standardGeneric("reactions"))
setMethod("reactions", "Model", function(object) object@reactions)

 setGeneric("events", function(object) standardGeneric("events"))
setMethod("events", "Model", function(object) object@events)

 setGeneric("layouts", function(object) standardGeneric("layouts"))
setMethod("layouts", "Model", function(object) object@layouts)

 
setReplaceMethod("id", "Model", function(object, value) {
  object@id <- value
  object
})

 
setReplaceMethod("name", "Model", function(object, value) {
  object@name <- value
  object
})

 setGeneric("functionDefinitions<-", function(object, value) standardGeneric("functionDefinitions<-"))
setReplaceMethod("functionDefinitions", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "FunctionDefinition")))
    stop("All functions must be FunctionDefinition objects")
  object@functionDefinitions <- value
  object
})

 setGeneric("unitDefinitions<-", function(object, value) standardGeneric("unitDefinitions<-"))
setReplaceMethod("unitDefinitions", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "UnitDefinition")))
    stop("All units must be UnitDefinition objects")
  object@unitDefinitions <- value
  object
})

 setGeneric("compartments<-", function(object, value) standardGeneric("compartments<-"))
setReplaceMethod("compartments", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Compartment")))
    stop("All compartments must be Compartment objects")
  object@compartments <- value
  object
})

setReplaceMethod("species", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Species")))
    stop("All species must be Species objects")
  object@species <- value
  object
})

setReplaceMethod("parameters", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Parameter")))
    stop("All parameters must be Parameter objects")
  object@parameters <- value
  object
})

 setGeneric("rules<-", function(object, value) standardGeneric("rules<-"))
setReplaceMethod("rules", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Rule")))
    stop("All rules must be Rule objects")
  object@rules <- value
  object
})

 setGeneric("reactions<-", function(object, value) standardGeneric("reactions<-"))
setReplaceMethod("reactions", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Reaction")))
    stop("All reactions must be Reaction objects")
  object@reactions <- value
  object
})

 setGeneric("events<-", function(object, value) standardGeneric("events<-"))
setReplaceMethod("events", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Event")))
    stop("All events must be Event objects")
  object@events <- value
  object
})

 setGeneric("layouts<-", function(object, value) standardGeneric("layouts<-"))
setReplaceMethod("layouts", "Model", function(object, value) {
  if (!all(sapply(value, inherits, "Layout")))
    stop("All layouts must be Layout objects")
  object@layouts <- value
  object
})

