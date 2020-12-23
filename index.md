---
title: Home.
layout: pagewt
---

**{{ site.title }}** is the personal website of Tom Torggler.

# Tags.

{% assign tags_max = 0 %}
{% for tag in site.tags %}
    {% if tag[1].size > tags_max %}
    {% assign tags_max = tag[1].size %}
    {% endif %}
{% endfor %}

<ul class="tagscontainer">
{%- for i in (1..tags_max) reversed -%}
{%- for tag in site.tags -%}
{% if tag[1].size == i and tag[1].size > 1 %}
<li class="tag"><a href="{{ site.baseurl }}/Tags/{{ tag[0]}}">{{ tag[0] }}</a><span class="tag-count">{{ i }}</span></li>
{% endif %}
{%- endfor -%}
{%- endfor -%}
</ul>


# Recent Posts.

<div class="postlist">
{% for post in site.posts limit:3 %}
<h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
{%- include post-meta.html -%}
{{ post.excerpt }}
{% endfor %}
</div>


# Archive.

You can find an archive of all posts here: [Archive]({% link archive.md %})
