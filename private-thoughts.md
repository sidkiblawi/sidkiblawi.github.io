---
layout: default
title: Private Thoughts
permalink: /private-thoughts/
sitemap: false
---

<div class="home">
  <h1 class="page-heading">{{ page.title }}</h1>

  <ul class="post-list">
    {%- assign sorted = site.private_thoughts | sort: 'date' | reverse -%}
    {%- for post in sorted -%}
      <li>
        {%- if post.date -%}
          {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
          <span class="post-meta">{{ post.date | date: date_format }}</span>
        {%- endif -%}
        <h3>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
        </h3>
        {%- if site.show_excerpts and post.excerpt -%}
          {{ post.excerpt }}
        {%- endif -%}
      </li>
    {%- endfor -%}
  </ul>
</div>
