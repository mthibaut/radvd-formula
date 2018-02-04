{%- from "radvd/map.jinja" import map with context %}

{{ map.service }}:
  service.running:
    - require:
      - pkg: radvd_pkgs
      - sls: radvd
