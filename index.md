---
layout: default
---

{%- if site.posts.size > 0 -%}

<div class="container">

{%- for post in site.posts -%}

  <div class="card">
    <img src="{{- post.image | relative_url -}}" class="card-image">
    <div class="card-content">

      {%- if site.posts.size > 0 -%}

      <div class="tag-wrapper">
        {%- for tag in post.tags -%}
          <span class="tag">{{ tag | capitalize }}</span>
        {%- endfor -%}
      </div>

      {%- endif -%}

      <h3>
        <a class="post-link" href="{{ post.url | relative_url }}">
          {{ post.title | escape }}
        </a>
      </h3>
      {%- if site.show_excerpts -%}
        {{ post.excerpt }}
      {%- endif -%}

      {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
      <span class="post-meta">{{ post.date | date: date_format }}</span>

    </div>

  </div>

{%- endfor -%}

</div>

{%- endif -%}

{% for tag in site.tags %}

  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
