---
layout: documentation
title: makeTreeDataMatch
author: Arbor core team
categories: collections phylogeny treemanipulate
arbortype: function
arborcollection: phylogeny
description: match data matrix and tree

---

## Overview

Matches the rownames of a data matrix with the tip labels of a phylogenetic tree using the aRbor function make.treedata.

## Example

data(anolis)
td <- make.treedata(anolis$phy, anolis$dat, name_column=1)

## Arguments

- Tree for matching with data: An input phylogenetic tree
- Table for matching with tree: A data matrix including species names

## Outputs

- tree_matched: Tree with tip labels that match data names exactly.
- table_matched: Table with row names that match tree tip labels exactly.

## References
