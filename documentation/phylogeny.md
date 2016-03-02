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

<div class="tiles">
{% capture posts %}
  {% for post in site.categories.phylogeny %}
    |{{ post.title }}#{{ post.url }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}
{% for post in sortedposts %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a></li><br>
{% endfor %}
</div><!-- /.tiles -->
