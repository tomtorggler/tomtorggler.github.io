---
title: PowerShell.
layout: pagewt
permalink: /powershell
---

# Modules.

<div class="gridcontainer">
    {%- for post in site.Modules -%}
    <div class="postlist borderl">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {{ post.excerpt }}
    </div>
    {%- endfor -%}
</div>

# Scripts.

<div class="gridcontainer">
    {%- for post in site.Scripts -%}
    <div class="postlist borderl">
        <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        {{ post.excerpt }}
    </div>
    {%- endfor -%}
</div>
