# data from Liam's blog
# http://blog.phytools.org/2016/08/empirical-co-phylogenetic-cophylo.html

library(phytools)
Pleistodontes<-read.tree(text="(((1,(2,3)100)50,(((((((4,(5,(6,7)100)69)100,(8,(9,10))81)61,11),(12,13)100),(14,15)100),(16,17)96),18)),19);")
Pleistodontes$tip.label<-c("P._froggatti",
                           "P._blandus",
                           "P._near_blandus",
                           "P._proximus",
                           "P._athysanus",
                           "P._cuneatus",
                           "P._astrabocheilus",
                           "P._macrocainus",
                           "P._rigisamos",
                           "P._imperialis",
                           "P._nigriventris",
                           "P._xanthocephalus",
                           "P._greenwoodi",
                           "P._rieki",
                           "P._plebejus",
                           "P._schizodontes",
                           "P._nitens",
                           "P._spec._nov._1",
                           "P._regalis")
## rotate all nodes to match orientation in article
Pleistodontes<-rotateNodes(Pleistodontes,"all")
Sycoscapter<-read.tree(text="(1,((((2,3)100,((4,5),(6,7)78)100),((8,9)50,10)99),(((11,12),13)91,(14,15)77)));")
Sycoscapter$tip.label<-c("S._australis_{macrophylla}",
                         "S._3_{playpoda}",
                         "S._5_{cerasicarpa}",
                         "S._6_{lilliputiana}",
                         "S._7_{subpuberula}",
                         "S._1_{brachypoda}",
                         "S._15_{rubiginosa}",
                         "S._9_{triradiata}",
                         "S._10_{crassipes}",
                         "S._8_{pleurocarpa}",
                         "S._11_{glandifera}",
                         "S._12_{xylosycia}",
                         "S._14_{hesperidiiformis}",
                         "S._2_{aff._obliqua}",
                         "S._4_{obliqua}")
Sycoscapter<-rotateNodes(Sycoscapter,"all")
assoc<-cbind(
  Pleistodontes$tip.label[c(7,8,5,6,18,1,3,4,10,15,13,16,12,14,19)],
  Sycoscapter$tip.label)

write.tree(Pleistodontes, "~/Documents/arbor/arborCollections/sampleDatasets/pleistodontes.phy")
write.tree(Sycoscapter, "~/Documents/arbor/arborCollections/sampleDatasets/sycoscapter.phy")
write.csv(assoc, "~/Documents/arbor/arborCollections/sampleDatasets/pleidt_syco_assoc.csv")

cc<-cophylo(Pleistodontes, Sycoscapter, assoc, rotate=T)

