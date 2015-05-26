---
title: phylogeneticSignal
author: Arbor core team
---

## phylogeneticSignal: function

### collection: phylogenies

## Overview

aceArbor is a function for estimating and testing for phylogenetic signal. It works for
both discrete and continuous variables, and can use a variety of methods for calculating
phylogenetic signal.

## Example

From the [docs] ({{ site.baseurl}}/../docs/ ) page, get anolis.phy and anolis.csv.
Load these files into Arbor, and use them as inputs to the phylogeneticSignal function. Choose
the "SVL" column for analysis, and select type: lambda.

## Technical details

### Description
Calculates phylogenetic signal for either discrete or continuous variables using
various methods.

### Usage

### Arguments
- table: A data table including species names
- tree: A phylogenetic tree
- column: The name of the column to analyze
- method: either "K" for Blomberg's K or "lambda" for Pagel's lambda

###Outputs
Function outputs a table with results from the test of phylogenetic signal.

### See also
