---
title: Archive.
layout: page
---

<div>
{%- for post in site.posts -%}
    <div class="item">
        <h2 class="postlist"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {%- include post-meta.html -%}
        {{ post.excerpt }}
    </div>
{%- endfor -%}
</div>