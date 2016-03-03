---
layout: documentation
title: aggregateTableByAverage
author: Arbor core team
categories: collections base matrix
arbortype: function
arborcollection: base
description: "Aggregate a table using some factor by averaging"
image: aggregateTableByAverage.png

---

## Overview

Roll up the values of a table's rows according to discrete values in a selected "groupBy" column. The number of output rows in the table will be equal to the number of discrete values in the groupBy column.  The values in the other columns will be the average of the values of all rows which belonged to this group from the input table.   Therefore, this is a simple aggregation by one column.

## Example

## Arguments
- table: input table of continuous values
- column: column name used as the "group by" control

## Outputs
- output: output table

## References
