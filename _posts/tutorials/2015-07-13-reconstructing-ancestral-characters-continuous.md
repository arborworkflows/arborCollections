---
layout: article
categories: tutorials
title: Continuous ancestral character states
summary: How to build a workflow that can reconstruct continuous ancestral character states on nodes in your tree using Arbor
comments: true
image:
  teaser: arborcace-400x250.jpg
---

## How to build a workflow that can reconstruct continuous ancestral character states on nodes in your tree using Arbor

In this exercise, we will learn how to build a workflow that can reconstruct ancestral character states in Arbor for a continuous character - that is, a character that can take on any continuous value, like body weight or limb length.

This exercise is quite similar to a tutorial for [ancestral state estimation of discrete characters]({{ site.baseurl }}/tutorials/reconstructing-ancestral-characters-discrete/).

Imagine that you have a phylogenetic tree with information on some continuous character for some or all of the tips. You want to use mathematical methods to reconstruct the ancestral character states on the internal nodes of the tree under a Brownian motion model. Then, this is the exercise for you!

## Loading example data

For this example, we will use a dataset where the species included in the tree and character data do not match perfectly. Obtain the day gecko example data files, phelsuma.phy and phelsuma.csv, from [Arbor datasets]({{ site.baseurl}}/docs_datasets.html). Save those files somewhere on your computer.

If you look at these files, you will see that the tree includes a few unique species for which there is no character data. Arbor will recognize this and drop those species from the analysis.

Now open the [Arbor web app](http://arbor1.arborworkflows.com). Drag and drop the two phelsuma data files on the blue "Browse or drop files" box to load them into your browser.

Finally, [log in and create a personal collection]({{ site.baseurl }}/2015/06/09/creating-a-new-collection/).

## Selecting the collections that you need

For this example, everything required is in the "phylogeny" collection - so click on that eyeball and you will be able to access the functions that you need.

At this point, you should have the two anolis datafiles stored in Arbor and the "phylogeny" collection available. You should be logged in and have write access to your own private collection.

## Set up your workflow

The main function in Arbor for ancestral state reconstruction is aceAcbor in the "phylogeny" collection. Select that function now. You can view the source code for it by choosing "show script" (it is in R).

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen1.png)

You will need to use this function in a workflow to calculate ancestral states and return the output. To start, create a new workflow called ContinuousAncestralStatesWorkflow". Make sure to choose "New workflow" and not "New analysis"!

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen2.png)

Now create the connections you need to make the workflow run. First, click the "edit" button to start working on the workflow.

Now add the aceArbor function by selecting it under "Select analysis." When you click "Add to workflow" then the function shoud appear in your workspace.

Now create the inputs and outputs of the function by clicking on the "spokes" coming out of aceArbor. You should also move the blocks around to make your workflow look nice.

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen3.png)

**To see a more detailed walkthrough of making connections in your workflow, see the tutorial [ancestral state estimation of discrete characters]({{ site.baseurl }}/tutorials/reconstructing-ancestral-characters-discrete/).**

**Once you have a workflow that looks the way you want, click save!** If you do not do this you will be running the workflow at the last point it was saved and not what is shown on the screen.

## Run your workflow

Click "Setup and run" to run your workflow. Select these options:

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen4.png)

If your analysis worked, you should see the following message:

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen6.png)


## See your results

Now move over to the "visualization" tab to see your results. First, select "image" under "Select visualization", and choose your tree plot under "data" (it should be called ContinuousAncestralStatesWorkflow treePlot). Click "update" to see this result:

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen7.png)

To see the results in table format, choose "table" and "ContinuousAncestralStatesWorkflow res". Update gives you this table, which shows the ancestral state estimates and CIs for each node in the tree:

![Screenshot]({{ site.baseurl }}/assets/continuousACE/screen8.png)
