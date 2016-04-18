---
layout: documentation_index
title: "Phylogenies collection"
categories: documentation
modified:
tags: []
image:
  feature:
  teaser:
---
#### Sorted by category | [Sorted alphabetically]({{ site.baseurl }}/documentation/phylogeny_allsort/)
---


### Build trees

<div class="tiles">

{% capture posts %}
  {% for post in site.categories.treebuild %}
    |{{ post.title }}#{{ post.url }}#{{ post.description }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}

{% for post in sortedposts offset:1 %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->


### Manipulate trees

<div class="tiles">

{% capture posts %}
  {% for post in site.categories.treemanipulate %}
    |{{ post.title }}#{{ post.url }}#{{ post.description }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}

{% for post in sortedposts offset:1 %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->

### Investigate trees

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.treecalculate %}
    |{{ post.title }}#{{ post.url }}#{{ post.description }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts offset: 1%}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->

### Investigate characters on trees

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.charactercalculate %}
    |{{ post.title }}#{{ post.url }}#{{ post.description }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts offset: 1%}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->

### Phylogenies datasets

<div class="tiles">

{% capture posts %}
  {% for post in site.categories.phylogeny %}
    {% if post.categories contains "data" %}
      |{{ post.title }}#{{ post.url }}#{{ post.description }}
    {% endif %}  
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}

{% for post in sortedposts offset:1 %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->
