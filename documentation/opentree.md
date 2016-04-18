---
layout: documentation_index
title: "Opentree collection"
categories: documentation
modified:
tags: []
image:
  feature:
  teaser:
---
#### Sorted by category | [Sorted alphabetically]({{ site.baseurl }}/documentation/opentree_allsort/)
---

### Opentree datasets

<div class="tiles">

{% capture posts %}
  {% for post in site.categories.opentree %}
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
