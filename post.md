---
title: Posts.
layout: pagewt
---

<div class="postlist">
{%- for post in site.posts -%}
    <div class="item">
        <h1><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h1>
        {%- include post-meta.html -%}
        {{ post.excerpt }}
        <p style="text-align: center"> · </p>
    </div>
{%- endfor -%}
</div>
