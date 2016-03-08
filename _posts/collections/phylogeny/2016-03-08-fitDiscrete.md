---
layout: documentation
title: fitDiscrete
author: Arbor core team
categories: collections phylogeny charactercalculate
arbortype: function
arborcollection: phylogeny
description: fit models of evolution to discrete characters
image: fitDiscrete.png

---

## Overview

Fits a particular model of evolution to a discrete character on a phylogenetic tree.

## Example



## Arguments

- table: Table including species names and the column of interest
- tree: Phylogenetic tree with branch lengths
- column: Column name in table to analyze
- model: Model of evolution; must match one of the options in [geiger](https://cran.r-project.org/web/packages/geiger/geiger.pdf) fitDiscrete, currently one of: "ER","SYM","ARD","meristic". Tree transforms not yet implemented.

## Outputs

- Q: fitted Q matrix
- res: List showing model fit: lnL, aic, aicc, k

## References
