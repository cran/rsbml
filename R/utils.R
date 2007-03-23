#validateSId <- function(sid)
#{
#  tmp <- sub("[A-Za-z_][A-Za-z0-9_]*", "", sid)
#  if (nchar(tmp) > 0)
#    stop("SId '", sid, "' is invalid, SIds must contain only alphanumeric characters ",
#      "plus '_' but must not start with a number")
#  return(TRUE)
#}
