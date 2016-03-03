---
layout: documentation
title: addColumns
author: Arbor core team
categories: collections base matrix
arbortype: function
arborcollection: base
description: "find the sum of two columns in a data matrix"

---

## Overview

addColumns can be used to find the sum of two columns in a data matrix.

## Example

From the [docs] ({{ site.baseurl}}/../docs/ ) page, get anolis.csv.
Load this files into Arbor, and use it as input to the addColumns function.
Choose "SVL" and "awesomeness" as columnOne and columnTwo, respectively.
Name the outputColumn whatever you want.

The output is a table with all the data from anolis.csv along with a new column that shows the sum of SVL and awesomeness.

## Arguments
- table: A data table
- columnOne and columnTwo: The name of the columns to add


## Outputs
Function outputs a table with a new column appended to the end.
