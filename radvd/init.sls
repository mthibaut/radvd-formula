# This is the main state file for configuring radvd.
{%- from "radvd/map.jinja" import map with context %}

include:
  - radvd.service

# Install radvd packages
radvd_pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in map.pkgs %}
      - {{ pkg }}
      {%- endfor %}
