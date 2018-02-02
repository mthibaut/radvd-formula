{% from "radvd/map.jinja" import map with context %}

include:
  - radvd

{% set config = salt['pillar.get']('radvd') %}
{% set config_dir = config.conf_dir if config.conf_dir is defined else map.conf_dir %}
{% set config_file = config.conf_file if config.conf_file is defined else "{0}/radvd.{1}".format(config_dir, map.conf_ext) %}

{{ config_file }}:
  file.managed:
    - source:
      - salt://radvd/files/radvd.jinja
    - template: jinja
    - context:
        config: {{ config }}
    - watch_in:
      - service: {{ map.service }}
