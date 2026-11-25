---
layout: single
title: "People"
permalink: /people/
author_profile: true
redirect_from:
  - /students/
---

<h2>Join Us</h2>

The Neural Network Theory and Control Lab is looking for motivated **M.S./Ph.D. students** and **undergraduate research interns** interested in machine learning theory, machine unlearning, and Spatial/Physical AI.

Please email me at [yooheebin@ssu.ac.kr](mailto:yooheebin@ssu.ac.kr) with your CV (and transcript, if available) and a short description of your research interests.

신경망 이론 및 제어 연구실에서 석사·박사과정 대학원생과 학부연구생을 모집합니다. 관심 있는 분은 CV(가능하면 성적표 포함)와 관심 연구 분야를 간단히 적어 이메일로 연락 주세요.


{% assign P = site.data.people %}
{% assign groups = "phd|Ph.D. Students,ms|M.S. Students,undergrad|Undergraduate Research Interns" | split: "," %}

{% for g in groups %}
{% assign parts = g | split: "|" %}
{% assign members = P[parts[0]] %}
{% assign n = members | size %}
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
{% endfor %}

{% assign n = P.co_advised | size %}
{% if n > 0 %}
<h2>Co-advised Students</h2>
<p>Co-advised with Prof. Byoung-Tak Zhang at the <a href="https://bi.snu.ac.kr">Biointelligence Lab</a>, Seoul National University.</p>
<ul>
{% for s in P.co_advised %}
  <li><strong>{% if s.homepage %}<a href="{{ s.homepage }}">{{ s.name }}</a>{% else %}{{ s.name }}{% endif %}</strong>{% if s.degree %}, {{ s.degree }}{% endif %}</li>
{% endfor %}
</ul>
{% endif %}

{% assign n = P.coworkers | size %}
{% if n > 0 %}
<h2>Current Coworkers</h2>
<ul>
{% for c in P.coworkers %}
  <li><strong>{% if c.homepage %}<a href="{{ c.homepage }}">{{ c.name }}</a>{% else %}{{ c.name }}{% endif %}</strong>{% if c.affiliation %} — {{ c.affiliation }}{% endif %}{% if c.note %}<br><em>{{ c.note }}</em>{% endif %}</li>
{% endfor %}
</ul>
{% endif %}

{% assign n = P.alumni | size %}
{% if n > 0 %}
<h2>Alumni</h2>
<ul>
{% for s in P.alumni %}
  <li><strong>{% if s.homepage %}<a href="{{ s.homepage }}">{{ s.name }}</a>{% else %}{{ s.name }}{% endif %}</strong>{% if s.degree %}, {{ s.degree }}{% endif %}{% if s.now %} — now at {{ s.now }}{% endif %}</li>
{% endfor %}
</ul>
{% endif %}

{% assign n = P.collaborators | size %}
{% if n > 0 %}
<h2>Collaborators</h2>
<ul>
{% for c in P.collaborators %}
  <li><strong>{% if c.homepage %}<a href="{{ c.homepage }}">{{ c.name }}</a>{% else %}{{ c.name }}{% endif %}</strong>{% if c.affiliation %} — {{ c.affiliation }}{% endif %}{% if c.note %}<br><em>{{ c.note }}</em>{% endif %}</li>
{% endfor %}
</ul>
{% endif %}
