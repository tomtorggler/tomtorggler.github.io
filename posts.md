---
layout: page
title: Posts
---

<div class="postlist">
{%- for post in site.posts -%}
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    {%- include post-meta.html -%}
    {{ post.excerpt }}
{%- endfor -%}
</div>