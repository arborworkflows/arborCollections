---
layout: article
categories: tutorials
title: What is Arbor?
summary: An introduction to our workflow software
comments: true
image:
  teaser: arbor-400x250.jpg
---

<h2>What is Arbor?</h2>

Arbor is a software package for phylogenetic comparative analyses. Our main website is:

<a href="https://www.arborworkflows.com/">www.arborworkflows.com</a>

<h2>When will Arbor be available?</h2>

Right now! And Arbor's functionality continues to grow.

<h2>What will Arbor be able to do for me?</h2>

To start out with, Arbor will be able to do the most common comparative analyses, including:


- Phylogenetic signal
- Ancestral state reconstruction
- Independent contrasts
- Comparative model fitting (e.g. Mk, threshold, and continuous character models)
- PGLS
- Fitting Birth-death models
- Community phylogenetics
- BiSSE / MuSSE / QuaSSE / GeoSSE
- Analyses of cospeciation

We are building up towards more complicated analyses.

<h2>What is an Arbor workflow?</h2>

Phylogenetic trees are increasingly [available](http://blog.opentreeoflife.org), and can be used for a wide range of analyses, including studies of speciation, trait evolution, range size evolution, and many other things. Phylogenetic comparative methods have been developing rapidly in recent years. Most analyses are currently done in R, and a number of useful packages are available (e.g. ape, diversitree, geiger, caper, phytools, [and others](http://cran.r-project.org/web/views/Phylogenetics.html)). Arbor seeks to enable end-users to carry out these analyses by building workflows.

Building an Arbor workflow will have more in common with making something out of legos than with computer programming. For example, the figure below shows a mockup of an Arbor workflow to calculate phylogenetic independent contrasts (PICs). End users will import a phylogenetic tree and some traits data - perhaps from their local computer, or maybe from a remote source like [Open Tree of Life](https://tree.opentreeoflife.org/opentree/argus/opentree3.0@1) or [Encyclopedia of Life](http://eol.org). The workflow below then allows the user to connect a few steps together to calculate PICs and use them to test for a correlation between two traits.

![PIC workflow]({{ site.baseurl }}/assets/simple_pic_workflow.jpg)

**A sample workflow for calculating phylogenetic independent contrasts (PICs) to test for an evolutionary correlation between two traits.**


The PIC workflow above is simple, but Arbor will enable more complex analyses as well. For example, imagine you are interested in analyzing geographic range evolution in your group of species.

![Web workflow]({{ site.baseurl }}/assets/cartoon_workflow.png)

**A more complex workflow that uses data from web services to combine ecological niche models, Lagrange, and phylogenetic comparative analyses.**


The workflow above shows how you might use Arbor to link phylogenetic, trait, and geographic data together in a comprehensive set of comparative analyses. If you want to get an idea of other examples of workflow software in biology, you can check out other examples like [Galaxy](https://usegalaxy.org/) and the [iPlant Discovery Environment](http://www.iplantcollaborative.org/ci/discovery-environment).

<h2>How can I participate in the project?</h2>

You can follow our blog, visit our main site, and find our code on github. We will also be hosting a series of hackathons to be announced at a later date.
