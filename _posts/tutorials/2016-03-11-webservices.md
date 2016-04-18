---
layout: article
categories: tutorials
title: Web services
summary: You can use web services to obtain data as part of an Arbor workflow
comments: true
image:
  feature:
  teaser: otol-to-arbor-400x250.png
---

## What are web services?

Web services are protocols for computers to exchange information over the web (see [wikipedia: web service](https://en.wikipedia.org/wiki/Web_service)), typically via an [API](https://en.wikipedia.org/wiki/Application_programming_interface). In biology, web services are becoming more and more common. You can obtain, for example, phylogenetic trees from [Open Tree of Life](http://opentreeoflife.org/), geographic occurrences from [GBIF](http://www.gbif.org/), and trait data from [Encyclopedia of Life](http://eol.org/), all using web services.

We have a number of pre-made functions in Arbor that can obtain data through web services. These functions can be included in workflows that make it easy to combine your data with data obtained over the web and carry out analyses. In this tutorial we will illustrate one of these applications, starting with a list of species and obtaining a phylogenetic tree from Open Tree of Life.

## Example: from a list of species to a phylogenetic tree

We are going to start with a list of species. You can obtain this list as a csv file [here]({{ site.baseurl }}/assets/mammal_species_list.csv); download and save this file somewhere to your computer.

Now, open an Arbor instance (e.g. [arbor1.arborworkflows.com](http://arbor1.arborworkflows.com/#)). You will now need to load in your species list. You can do this by dragging the file that you just downloaded onto the "Browse or drop files" box:

![screen1]({{ site.baseurl }}/assets/webServices/webserv-screen1.png)

(you can also see our tutorial on [using the Arbor webapp]({{ site.baseurl}}/tutorials/using-the-arbor-webapp/)) for more information on loading data into Arbor)

We will be building a workflow to do this analysis. Note that you need to be logged in and have write access to a collection to make the next parts work!

Click over to the "Analysis" tab, and create a new workflow. To do that, type the name of the new workflow it the box under "Create new analysis." Let's call our workflow "getOTLTreeAndPlot."

![screen2]({{ site.baseurl }}/assets/webServices/webserv-screen2.png)

Once you have created the workflow, you should be able to view and edit (but right now it is just a blank white space!)

![screen3]({{ site.baseurl }}/assets/webServices/webserv-screen3.png)


The first step in this workflow is to match the species names with the names in the Open Tree of Life Taxonomy (OTT). To do this, we will use a function in the "OpenTree" collection called "Lookup Names Using OpenTree Taxonomy." Add this function to your workflow using the "+ add to workflow" button.

![screen4]({{ site.baseurl }}/assets/webServices/webserv-screen4.png)

We can click the tab on the left side of that new workflow step to indicate that the user will send a data table directly to this function. So our workflow is now:

![screen5]({{ site.baseurl }}/assets/webServices/webserv-screen5.png)

Now we need to pull out an "induced subtree" from open tree of life using the OTT ids that we obtained in the previous step. To do that, add a new function to your workflow, again from the OpenTree collection: "Return the Open Tree Subtree from a node list." Add and connect that next step to your workflow:

![screen6]({{ site.baseurl }}/assets/webServices/webserv-screen6.png)

Now we just need to plot our resulting tree. You can use a function from the "Phylogenies" collection called "PlotTreeWithApe." Add that function, connect it to your workflow, and specify that the last output be sent to the user:

![screen7]({{ site.baseurl }}/assets/webServices/webserv-screen7.png)

Now just click "Setup and run." In the box that appears, choose your input file with the list of mammal species names.

![screen8]({{ site.baseurl }}/assets/webServices/webserv-screen8.png)

The workflow will run for a while:

![screen9]({{ site.baseurl }}/assets/webServices/webserv-screen9.png)

And then finish:

![screen10]({{ site.baseurl }}/assets/webServices/webserv-screen10.png)

You can then change to the "visualization" tab, and select the output from your workflow.

![screen11]({{ site.baseurl }}/assets/webServices/webserv-screen11.png)

We then see the final result:

![screen12]({{ site.baseurl }}/assets/webServices/webserv-screen12.png)

This is a phylogenetic tree pulled from the Open Tree of Life synthesis that includes all of the species in the table that you supplied.
