---
layout: page
title: Posts
---

<ul class="postlist">
{%- for post in site.posts -%}
    <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    {%- include post-meta.html -%}
    {{ post.excerpt }}
    </li>
{%- endfor -%}
</ul>