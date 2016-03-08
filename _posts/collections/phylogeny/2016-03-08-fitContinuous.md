---
layout: documentation
title: fitContinuous
author: Arbor core team
categories: collections phylogeny charactercalculate
arbortype: function
arborcollection: phylogeny
description: fit models of evolution to continuous characters
image: fitContinuous.png

---

## Overview

Fits a particular model of evolution to a continuous character on a phylogenetic tree.

## Example



## Arguments

- table: Table including species names and the column of interest
- tree: Phylogenetic tree with branch lengths
- column: Column name in table to analyze
- model: Model of evolution; must match one of the options in [geiger](https://cran.r-project.org/web/packages/geiger/geiger.pdf) fitContinuous, currently one of: "BM","OU","EB","trend","lambda","kappa","delta","drift","white"

## Outputs

- treeplot: plot of independent contrasts as a check for model adequacy. See [plotContrasts](https://github.com/arborworkflows/aRbor/blob/master/R/plotting.R).
- result: Transformed tree
- fit: List of model fit results: model parameters, lnL, AIC, AICc

## References
