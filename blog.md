---
layout: page
title: AB | Blog
active: blog
---

<!--- <h1>My <img src="/images/ab_head_med.png" height="50px" style="padding-bottom:10px"> Blog</h1> --->

{% assign posts = site.blog | sort: 'date' %}
{% for post in posts reversed %}
<li class="hidden-xs"><h3><a href="{{ post.url }}">{{ post.title }}</a>	
<span class="hidden-xs" style="width: 8em; float: right; ">{{ post.date | date: "%B %-d, %Y" }}</span></h3></li>

<li class="visible-xs text-center"><h3><a href="{{ post.url }}">{{ post.title }}</a></h3></li>
{% endfor %}

# POSTS COMING SOON
<center>
<img src="https://media.giphy.com/media/5AiQLaZhFBeGk/giphy.gif" width="480" height="269" class="img-responsive" alt="Responsive image">
</center>