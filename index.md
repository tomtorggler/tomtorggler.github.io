---
title: Welcome.
layout: page
---

**{{ site.title }}** is the personal website of Tom Torggler. I am an itpro and consultant with over 13 years of experience. That means I am getting old &mdash; it does not mean I am loosing interest in technology. This site contains new content as well as the complete archives of ntsystems.it, which was a blog I co-wrote with my good friend and colleague [Daniel](https://twitter.com/nitz_d). 

Just like the old site, this site is **free**. There are no trackers, no ads, no cookies. However, we do store the name of the theme you choose in your browser's local storage and we use a service worker to store pages you visited in your browser's cache storage. That makes the site [installable](https://web.dev/discover-installable/), fast, and it will continue to work even if you're offline.

# Popular Tags.

Since 2009 we have written {{ site.posts.size }} posts. You can browse our more popular topics below or find [all tags](/Tags) in the menu above.

{% assign tags_max = 0 %}
{% for tag in site.tags %}
    {% if tag[1].size > tags_max %}
    {% assign tags_max = tag[1].size %}
    {% endif %}
{% endfor %}

<ul class="tagscontainer">
{%- for i in (1..tags_max) reversed -%}
{%- for tag in site.tags -%}
{% if tag[1].size == i and tag[1].size > 4 %}
<li class="tag"><a href="{{ site.baseurl }}/Tags/{{ tag[0]}}">{{ tag[0] }}</a><span class="tag-count">{{ i }}</span></li>
{% endif %}
{%- endfor -%}
{%- endfor -%}
</ul>


# Recent Posts.

<div>
{% for post in site.posts limit:3 %}
<h2 class="postlist"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
{%- include post-meta.html -%}
{{ post.excerpt }}
{% endfor %}
</div>


# Archive.

You can find an archive of all posts here: [Archive]({% link archive.md %})
