---
layout: documentation_index
title: "Base collection"
categories: documentation
modified:
tags: []
image:
  feature:
  teaser:
---
#### Sorted by category | [Sorted alphabetically]({{ site.baseurl }}/documentation/base_allsort/)
---

### Manipulate matrices

<div class="tiles">

{% capture posts %}
  {% for post in site.categories.matrix %}
    |{{ post.title }}#{{ post.url }}#{{ post.description }}
  {% endfor %}
{% endcapture %}
{% assign sortedposts = posts | split: '|' | sort %}

{% for post in sortedposts offset:1 %}
  {% assign postitems = post | split: '#' %}
  <li><a href="{{ site.baseurl }}{{ postitems[1] }}">{{ postitems[0] }}</a> - {{ postitems[2] }}</li><br>
{% endfor %}
</div><!-- /.tiles -->