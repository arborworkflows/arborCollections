---
layout: documentation
title: aggregateTableByMax
author: Arbor core team
categories: collections base matrix
arbortype: function
arborcollection: base
description: "Aggregate a table using some factor by finding the maximum value for each category"
image: aggregateTableByMax.png

---

## Overview

Roll up the values of a table's rows according to discrete values in a selected "groupBy" column. The number of output rows in the table will be equal to the number of discrete values in the groupBy column.  

This is the MAX version of aggregation, so the values in the other columns will be the max value encountered out of all rows which belonged to this group from the input table.   

## Example

## Arguments
- table: input table of continuous values
- column: column name used as the "group by" control

## Outputs
- output: output table

## References
