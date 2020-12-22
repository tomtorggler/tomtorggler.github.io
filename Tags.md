---
title: Tags.
layout: grid
---


{% assign tags_max = 0 %}
{% for tag in site.tags %}
    {% if tag[1].size > tags_max %}
    {% assign tags_max = tag[1].size %}
    {% endif %}
{% endfor %}

{%- for i in (1..tags_max) reversed -%}
{%- for tag in site.tags -%}
{% if tag[1].size == i %}
<p class="borderl"><a href="{{ site.baseurl }}/Tags/{{ tag[0]}}">#{{ tag[0] }}</a> <span style="float: right">{{ i }}</span></p>
{% endif %}
{%- endfor -%}
{%- endfor -%}
