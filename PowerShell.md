---
title: PowerShell.
layout: pagewt
---

# Modules.

<div class="gridcontainer">
    {%- for post in site.Modules -%}
    <div class="borderl">
        <h2 class="postlist"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {{ post.excerpt }}
    </div>
    {%- endfor -%}
</div>

# Scripts.

<div class="gridcontainer">
    {%- for post in site.Scripts -%}
    <div class="borderl">
        <h2 class="postlist"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {{ post.excerpt }}
    </div>
    {%- endfor -%}
</div>
