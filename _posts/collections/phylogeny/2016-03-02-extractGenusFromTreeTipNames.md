---
layout: documentation
title: extractGenusFromTreeTipNames
author: Arbor core team
categories: collections phylogeny treemanipulate
arbortype: function
arborcollection: phylogeny
description: Extract just the genus from the tree tip names
image: extractGenusFromTreeTipNames.png

---

## Overview

Extracts and returns just the genus name from all of the tip names in the tree. Tree tips must be in the format of genus%species, where % is some special character like space or _ that is specified to the function.

## Example



## Arguments

- Input tree: An input phylogenetic tree
- Split character: The special character that separates genus and species in the species names. For example, this would be _ for Anolis_sagrei.

## Outputs

- Genus names: A table with a single column, the genus names.

## References
