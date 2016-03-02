---
layout: archive
title: "Phylogenies collection"
categories: documentation
modified:
tags: []
image:
  feature:
  teaser:
---

#### Sorted by category | [Sorted alphabetically]({{ site.baseurl }}/documentation/phylogeny_sorted/)
---

### Tree manipulation

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.treemanipulate %}
    |{{ post.title }}#{{ post.url }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a></li><br>
{% endfor %}
</div><!-- /.tiles -->

### Tree calculations

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.treecalculate %}
    |{{ post.title }}#{{ post.url }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a></li><br>
{% endfor %}
</div><!-- /.tiles -->

### Character on tree calculations

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.charactercalculate %}
    |{{ post.title }}#{{ post.url }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a></li><br>
{% endfor %}
</div><!-- /.tiles -->
