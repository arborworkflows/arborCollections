---
layout: documentation
title: congruify
author: Arbor core team
categories: collections phylogeny treemanipulate
arbortype: function
arborcollection: phylogeny
description: "calibrate a target tree based on a reference"

---

## Overview

Congruify uses an ultrametric reference tree to rescale a non-ultrametric target tree. This function
uses the reference (and, optionally, a taxonomic linkage table) to inform secondary calibrations in
the target. The primary output is a table of 'congruent' nodes between the reference and target with associated dates extracted from corresponding nodes in the reference. If multiple trees are supplied as the reference, a 'congruification' table is generated for each. The target is then smoothed by PATHd8 using the
"d8 calculation" (see http://www2.math.su.se/PATHd8/PATHd8manual.pdf).

## Example

sal=get(data(caudata))
res=congruify.phylo(sal$fam, sal$phy, sal$tax, tol=0, scale=NA, ncores=2)
print(res$calibrations)
plot(ladderize(sal$phy,right=FALSE), cex=0.35, type="fan", label.offset=2.5)
plot(ladderize(sal$fam,right=FALSE), cex=0.5, type="fan", label.offset=2.5, no.margin=FALSE)

res=congruify.phylo(sal$fam, sal$phy, sal$tax, tol=0, scale=\"PATHd8\")


## Arguments

- reference: an ultrametric tree used to time-scale the target
- target: a phylogram that is sought to be ultrametricized based on the reference phylogeny
- use_taxonomy: T/F flag indicating whether or not a taxonomy should be used
- taxonomy: a linkage table between tips of the phylogeny and clades represented in the tree; rownames of 'taxonomy' should be tips found in the phylogeny

## Outputs

- calibrations: a table of calibrations for the target
- calibratedTree: a rescaled, ultrametric, "congruified" target tree
- treePlot: a plot of calibratedTree

## References

Eastman JM, LJ Harmon, and DC Tank. 2013. Congruification: support for time scaling large phylogenetic trees. Methods in Ecology and Evolution, in press.
