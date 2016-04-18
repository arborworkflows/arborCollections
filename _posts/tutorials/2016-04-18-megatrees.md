---
layout: article
categories: tutorials
title: Megaphylogenies
summary: You can analyze very large phylogenetic trees using Arbor
comments: true
image:
  feature:
  teaser: onezoom-400x250.png
---

## What is a megaphylogeny?

Megaphylogenies are very large phylogenetic trees with thousands of tips.

## How can Arbor help with my megaphylogenetic analysis?

Arbor can help in three ways. First, using web services, Arbor can help you obtain large trees and time-scale these trees when necessary. Second, Arbor can help you match phylogenetic and character data, a complex task with very large trees. Finally, Arbor can analyze large datasets quickly and efficiently.

# Obtaining and time-scaling large trees

You can use Arbor's [web services]({{ site.baseurl}}/tutorials/webservices/) to obtain large phylogenetic trees from [Open Tree of Life](http://www.opentreeoflife.org/). You can then use Arbor's [method for time-scaling trees]({{ site.baseurl}}/tutorials/timetrees/) to add branch lengths to this tree.

# Matching phylogenetic and character data

Our new [treeplyr](https://github.com/uyedaj/treeplyr) package is made to help match tree and character data, and manipulate the combined dataset. Try the [treeplyr tutorial](https://github.com/uyedaj/treeplyr/wiki).

# Analyzing large datasets

Arbor code has been optimized to handle [very large datasets]({{ site.baseurl }}/tutorials/verylargetrees/).
