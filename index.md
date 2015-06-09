---
layout: default
title: Arbor Workflows
author: Luke Harmon
---

## Use Arbor

[![arbor]({{ site.baseurl}}/assets/arbor_square.jpeg) Build workflows](https://arbor.kitware.com/#) | [![easy]({{ site.baseurl}}/assets/easy_mode.jpeg) Easy mode]({{ site.baseurl }}/easy)

---

## Get help

[<i class="fa fa-coffee fa-2x"></i> Quick start]({{ site.baseurl }}/quick) | [<i class="fa fa-book fa-2x"></i> Documentation]({{ site.baseurl }}/docs)

---

## Interact with us

[<i class="fa fa-quote-left fa-2x"></i> Arbor blog]({{ site.baseurl }}/blog)

<h3> Recent posts </h3>
  <div class="posts">
    {% for post in paginator.posts %}
      <div class="post">
        <p class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</p>
        <a href="{{ post.url | prepend: site.baseurl }}" class="post-link"><h3 class="h2 post-title">{{ post.title }}</h3></a>
        <p class="post-summary">
          {% if post.summary %}
            {{ post.summary }}
          {% else %}
            {{ post.excerpt }}
          {% endif %}
        </p>
      </div>
    {% endfor %}
  </div>

  {% include pagination.html %}
</div>
