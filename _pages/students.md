---
layout: single
title: "Students"
permalink: /students/
author_profile: true
---

{% assign groups = "phd|Ph.D. Students,ms|M.S. Students,undergrad|Undergraduate Research Interns,alumni|Alumni" | split: "," %}

{% for g in groups %}
{% assign parts = g | split: "|" %}
{% assign members = site.data.students[parts[0]] %}
{% assign n = members | size %}
{% if parts[0] != "alumni" or n > 0 %}
<h2>{{ parts[1] }}</h2>
{% if n > 0 %}
<ul>
{% for s in members %}
  <li><strong>{% if s.homepage %}<a href="{{ s.homepage }}">{{ s.name }}</a>{% else %}{{ s.name }}{% endif %}</strong>{% if s.since %} ({{ s.since }}–){% endif %}{% if s.interests %} — {{ s.interests }}{% endif %}</li>
{% endfor %}
</ul>
{% else %}
<p><em>Open positions — we are recruiting!</em></p>
{% endif %}
{% endif %}
{% endfor %}

<h2>Join Us</h2>

My lab in the School of AI Software at Soongsil University is looking for motivated **M.S./Ph.D. students** and **undergraduate research interns** interested in machine learning theory, metric learning, machine unlearning, and Spatial/Physical AI.

Please email me at [yooheebin@ssu.ac.kr](mailto:yooheebin@ssu.ac.kr) with your CV (and transcript, if available) and a short description of your research interests.

석사·박사과정 대학원생과 학부연구생을 모집합니다. 관심 있는 분은 CV(가능하면 성적표 포함)와 관심 연구 분야를 간단히 적어 이메일로 연락 주세요.
