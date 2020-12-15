---
layout: default
title: About.
---

<div class="centerwrapper">
    <div class="gridcontainer">
        {%- for post in site.posts -%}
        <div class="postlist borderl">
            <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
            {%- include post-meta.html -%}
            {{ post.excerpt }}
        </div>
        {%- endfor -%}
    </div>
</div>
