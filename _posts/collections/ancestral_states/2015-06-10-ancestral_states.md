---
layout: documentation
title: aceArbor
author: Arbor core team
categories: collections ancestral_states
arbortype: function
arborcollection: ancestral_states
description: "ancestral state reconstruction for discrete and continuous characters"
image: acearbor.png

---

## Overview

aceArbor is a function for carrying out ancestral state reconstruction. It works for
both discrete and continuous variables, and can reconstruct ancestral character states
under both a maximum-likelihood and a Bayesian framework. The function returns results
in two formats: a table of ancestral state estimates for each node in the tree, and a plot
of the results.

## Example

From the [docs]({{ site.baseurl}}/../docs/ ) page, get anolis.phy and anolis.csv.
Load these files into Arbor, and use them as inputs to the aceArbor function. Choose
the "ecomorph" column for analysis, and select type: discrete and method: marginal.

## Arguments
- table: A data table including species names
- tree: A phylogenetic tree
- column: The name of the column to analyze
- type: The character type
  - discrete: a character with a discrete number of states
  - continuous: a continuously varying character
  - fromData: will attempt to determine the data type from the data itself
- method: specifies the method used to reconstruct ancestral character states
  - marginal: marginal ancestral state reconstructions, which reconstruct each node integrating over all possibilities at all other nodes in the tree; this is typically the method used in the literature to reconstruce ACEs
  - joint: joint ancestral reconstructions, which give the configuration of ancestral states that together maximize the likelihood of the data given model parameters
  - mcmc: reconstruct ancestral states using Bayesian MCMC. Note that the discrete version of this doesn't seem to work, and even if it did work it is not a full MCMC ancestral state method
  - stochastic: create stochastic character map

## Outputs
Function outputs a table and a plot with results of the ancestral state reconstruction.

## References
