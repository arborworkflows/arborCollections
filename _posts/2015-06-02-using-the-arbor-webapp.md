---
layout: post
title: Using the Arbor web app
---

## Overview

So, you want to use the Arbor web app to do some comparative analyses?

The Arbor web app is a flexible workflow engine that will let you carry out a wide range of visualizations
and analyses. You can upload data files from your computer, or use data from a range of web services.

For this example, I will walk you through the steps you need to use the Arbor web app. I will set up a
basic analysis of a correlation between two continuous characters using independent contrasts.

## Get started

You will need the anolis example data files, anolis.phy and anolis.csv, from [Arbor datasets] ({{ site.baseurl}}/docs_datasets/). Save those files somewhere on your computer.

Now open the [Arbor web app](https://arbor.kitware.com). Your screen should look something like this:

![Screenshot 1]({{ site.baseurl}}/assets/usingArborwebapp_1.png)

If you want, you can log in here; we will post more information about Arbor user accounts later. For now, you don't need to log in, you can do the analyses for this example without an account.

## Upload your data

Near the bottom of the Arbor web app screen you will see a blue box that says "Browse or drop files." This is how you can get your data into Arbor. There are two options: either you can click the box and browse to the file you want, or you can drag the file onto the box and let go. Arbor should recognize what type of file you have added (in this case, tree or datafile) and store them in the correct way.

Using this method, load in both anolis.phy and anolis.csv. If you want to make sure that your upload worked, you can use the dropdown menu that says "Save or download data." If you have properly loaded the files you will see them appear in that list.

![Screenshot 2]({{ site.baseurl}}/assets/usingArborwebapp_2.png)

*This is what my screen looks like after uploading anolis.csv - note that anolis.phy is also in the "Save or download data" dropdown, as I uploaded it just before.*

Note: Since you have not added your files to any collections, they will appear like this:

- anolis.csv
- anolis.phy

You may also see the same files stored in a collection, depending on how your web app is set up. If you see versions of those stored files from the "datasets" collection, for example, they will look like this:

- anolis.csv (datasets)
- anolis.phy (datasets)

Those stored files will work fine for the exercise, but try to use the ones you uploaded so that you can get the hang of using your own data in Arbor. Also, since these datasets are uploaded but not saved, if you **refresh your browser** or even **accidentally go to a different page**, the datasets will be gone when you come back. If you want to save your uploaded data then you should login and make a personal collection.

## Select the collections you want

For this exercise, you will use functions from two arbor collections, "base" and "phylogeny." All available collections are listed to the right side of the Data Management tab.

To gain access to functions in those collections, click the little eyeball next to "base" and "phylogeny." Your screen should now look like this:

![Screenshot 3]({{ site.baseurl}}/assets/usingArborwebapp_3.png)

## Navigate to the "analysis" tab

You are done with the Data Management tab, and will need to move to the "Analysis" tab to carry out your analysis. Click on the Analysis tab to switch. Your screen should now look like this:

![Screenshot 4]({{ site.baseurl}}/assets/usingArborwebapp_4.png)

## 
