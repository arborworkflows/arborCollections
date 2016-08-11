---
layout: documentation
title: Fitting models of trait evolution with Arbor
author: Arbor core team
categories: tasks
summary: for both discrete and continuous characters
arborcollection: traitModelFitting
image:
  teaser: traitevol.jpg
  feature: traitevol.jpg
---

We can fit a model of evolution - for example, Brownian motion or an Mk model - to comparative data, estimating model parameters and assessing model fit. For example, if we were interested in the evolution of body size among mammals (snakes and lizards), we could fit a variety of models. For each model, we could estimate the model parameters that best fit the data. We could also compare the fit of the models and use model selection to select the best of them.


Fitting models of trait evolution requires:

- a phylogenetic tree with branch lengths
- data for the tips of the tree. In Arbor, you don't have to have a perfect match between the species in the tree and in your data file - but anything that is missing from either of those will be dropped from the analysis.
- a model of evolution

## How to do this analysis in Arbor

There are two functions to fit models of trait evolution in Arbor Workflows:

[![fitContinuous fxn]({{ site.baseurl}}/images/fitContinuous.png)]({{ site.baseurl}}/collections/traitModelFitting/fitContinuous)

- [fitContinuous]({{ site.baseurl}}/collections/traitModelFitting/fitContinuous)

[![fitDiscrete fxn]({{ site.baseurl}}/images/fitDiscrete.png)]({{ site.baseurl}}/collections/traitModelFitting/fitDiscrete)

- [fitDiscrete]({{ site.baseurl}}/docs/fitDiscrete)

## Method assumptions

- known phylogenetic tree with branch lengths
- specified model of evolution
- tip character states known without error

### Example

From the [docs]({{ site.baseurl}}/../docs/ ) page, get anolis.phy and anolis.csv.
Load these files into Arbor, and use them as inputs to the fitDiscrete function (choose the "ecomorph" character).

### Example of use in a workflow

TBA

### Citations

Harmon, L. J., J. B. Losos, J. Davies, R. G. Gillespie, J. L. Gittleman, W. B. Jennings, K. Kozak, M. A. McPeek, F. Moreno-Roark, T. J. Near, A. Purvis, R. E. Ricklefs, D. Schluter, J. A. Schulte II, O. Seehausen, B. Sidlauskas, O. Torres-Carvajal, J. T. Weir, & A. Ø. Mooers. 2010. Early bursts of body size and shape evolution are rare in comparative data. Evolution 64: 2385.

Lewis, P.O. 2001. A likelihood approach to estimating phylogeny from discrete morphological character data. Systematic Biology 50:913-925.

Pennell, M. W., J. M. Eastman, G. J. Slater, J. W. Brown, J. C. Uyeda, R. G. Fitzjohn, M. E. Alfaro, and L. J. Harmon. 2014. geiger v2.0: an expanded suite of methods for fitting macroevolutionary models to phylogenetic trees. Bioinformatics 30: 2216-2218.
