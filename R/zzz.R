.First.lib <- function(libname, pkgname)
{
  if(.Platform$OS.type == "windows"){
     temp <- Sys.getenv("PATH")
     Sys.putenv(PATH = paste(normalizePath(file.path(libname, pkgname, "libs")), 
                               file.path(Sys.getenv("R_HOME"), "modules", fsep="\\"), temp, sep=";"))
     on.exit(Sys.putenv(PATH = temp))
  }
  library.dynam("rsbml", pkgname, libname)
}
