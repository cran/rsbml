gen <- function(class, super, fields, types)
{
  set_class <- paste("setClass(\"", class, "\", representation(", 
    paste(fields, " = \"", types, "\"", collapse = ", ", sep = ""), 
    "), contains = \"", super, "\")\n\n", sep ="")
  
  getters <- sapply(fields, function(field) {
    paste("setGeneric(\"", field, "\", function(object) standardGeneric(\"", field, "\"))\n", 
      "setMethod(\"", field, "\", \"", class, "\", function(object) object@", field, ")\n\n", sep ="")
  })
  
  setters <- sapply(fields, function(field) {
    paste("setGeneric(\"", field, "<-\", function(object, value) standardGeneric(\"", field, "<-\"))\n", 
    "setReplaceMethod(\"", field, "\", \"", class, 
    "\", function(object, value) {\n  object@", field, " <- value\n  object\n})\n\n", sep ="")
  })
  
  cat(set_class, getters, setters)
}

gen_slots <- function(class, ...) invisible(sapply(c(...), gen_slot, class))

gen_slot <- function(slot, class)
{
  paste("SET_SLOT(r_", class, ", install(\"", slot, "\"), mkChar(", 
    toupper(substring(class, 1, 1)), substring(class, 2), "_get", 
    toupper(substring(slot, 1, 1)), substring(slot, 2), "(", class, ")));", sep="")
}

gen_listofs <- function(class, ...) invisible(sapply(c(...), gen_listof, class))

gen_listof <- function(slot, class)
{
  cat(paste("SET_SLOT(r_", class, ", install(\"", slot, "\"), LIST_OF(", class,
    ", ", toupper(substring(class, 1, 1)), substring(class, 2), ", ", slot, ", ",
    toupper(substring(slot, 1, 1)), substring(slot, 2), "));\n", sep=""))
}

gen_converter <- function(class, ...)
{
  upper_class <- paste(toupper(substring(class, 1, 1)), substring(class, 2), sep="")
  cat(paste("static SEXP\n", "rsbml_build_dom_", class, "(", upper_class, "_t *", class, ")\n",
  "{\n", paste(paste("  ", c(paste("SEXP r_", class, ";", sep=""), "", 
    paste("PROTECT(r_", class, " = NEW_OBJECT(MAKE_CLASS(\"", upper_class, "\")));", sep=""), 
  "", paste("rsbml_build_dom_s_base(r_", class, ", (SBase_t *)", class, ");", sep=""), "",
  gen_slots(class, ...), "", "UNPROTECT(1);", "", paste("return r_", class, ";", sep="")), 
  sep=""), collapse="\n"), "\n}\n", sep=""))
}

gen_unslots <- function(class, ...) {
  slots <- c(...)
  invisible(sapply(names(slots), function(name) gen_unslot(name, slots[name], class)))
}

gen_unslot <- function(slot, type, class)
{
  upper_class <- paste(toupper(substring(class, 1, 1)), substring(class, 2), sep="")
  upper_slot <- paste(toupper(substring(slot, 1, 1)), substring(slot, 2), sep="")
  if (type == "character")
    type = "string"
  paste("SET_ATTR(", upper_class, ", ", class, ", ", upper_slot, ", ", slot, 
    ", ", toupper(type), ");", sep="")
}

gen_unconverter <- function(class, ...)
{
  upper_class <- paste(toupper(substring(class, 1, 1)), substring(class, 2), sep="")
  cat(paste("static ", upper_class, "_t *\n", "rsbml_build_doc_", class, "(", "SEXP r_", class, ")\n",
  "{\n", paste(paste("  ", c(paste(upper_class, "_t * ", class, ";", sep=""), "", 
    paste(class, " = ", upper_class, "_create();", sep=""), 
  "", paste("rsbml_build_doc_s_base((SBase_t *)", class, ", r_", class, ");", sep=""), "",
  gen_unslots(class, ...), "", paste("return ", class, ";", sep="")), 
  sep=""), collapse="\n"), "\n}\n", sep=""))
}

gen_to_dom <- function(class) gen_converter(tolower(class), names(getSlots(class)))
gen_to_doc <- function(class) gen_unconverter(tolower(class), getSlots(class))
