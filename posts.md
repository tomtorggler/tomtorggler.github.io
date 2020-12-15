---
layout: page
title: Posts
---

<div class="postlist">
{%- for post in site.posts -%}
    <div class="item">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {%- include post-meta.html -%}
        {{ post.excerpt }}
        <p style="text-align: center">-</p>
    </div>
{%- endfor -%}
</div>