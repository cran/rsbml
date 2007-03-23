library(rsbml)
doc <- rsbml_read("inst/data/sample3-layout.xml")
#g <- as(doc, "graph")
d <- as(doc, "SBML")

if(FALSE) {
library(Rgraphviz)
ag <- agopen(g, name = "glucose")
library(cairoDevice)
options(device="Cairo")
plot(ag)
Cairo()
ag <- agopen(g, name = "glucose", layoutType="fdp")
plot(ag)
}

if (FALSE) {
library(rggobi)
x <- sapply(ag@AgNode, function(node) node@center@x)
y <- sapply(ag@AgNode, function(node) node@center@y)
d <- data.frame(x = x, y = y)
rownames(d) <- nodes(g)
gg <- ggobi(d)
edges(gg[1]) <- g
}
