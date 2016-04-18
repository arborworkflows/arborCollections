---
layout: article
categories: tutorials
title: Timetrees
summary: You can time-scale phylogenetic trees with Arbor
comments: true
image:
  feature:
  teaser: swiss-clock-400x250.png
---

## Creating timetrees

Arbor has a few tools to create time-scaled phylogenetic trees. You can rescale your tree using standard methods like [pathd8](), [penalized likelihood](), or other methods that have been implemented in R. Alternatively, you can use our new tree rescaling method, described below, that calibrates a tree using dates from [timetree](http://timetree.org).

## Using Arbor to rescale your tree

In this example, we will obtain a tree from [open tree of life](http://opentree.org) and rescale it using dates from [timetree of life](http://timetree.org).

We start with a list of taxa, [testTaxa.csv]({{ site.baseurl }}/assets/testTaxa.csv). You can upload that csv file to your arbor instance, or just find it stored in the "treeTimer" collection.

![screen1]({{ site.baseurl }}/assets/timetree/timetree-screen1.png)

Now, choose and run the function called "Match taxa to the timetree of life" from the treeTimer collection.

![screen2]({{ site.baseurl }}/assets/timetree/timetree-screen2.png)

Use the following settings for this function:

![screen3]({{ site.baseurl }}/assets/timetree/timetree-screen3.png)

When the function has stopped running, you should see a success message:

![screen4]({{ site.baseurl }}/assets/timetree/timetree-screen4.png)

You can see a plot of the output by choosing the right settings in the Visualization tab.

![screen5]({{ site.baseurl }}/assets/timetree/timetree-screen5.png)

Here is your timetree:

![screen6]({{ site.baseurl }}/assets/timetree/timetree-output.png)
