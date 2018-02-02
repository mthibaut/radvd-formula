=====
radvd
=====

Formula to install and configure the IPv6 radvd server.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``radvd``
--------

Installs the Router Advertisement Daemon, which sends IPv6 router advertisements
on configured interfaces.

``radvd.config``
--------

Configures the Router Advertisement Daemon. Multiple interfaces, prefixes, etc are possible.

Example
=======

See *radvd/pillar.example*.

Notes
=====

This formula doesn't perform any configuration outside of the radvd daemon, such as:

* enabling IPv6 forwarding
* interface configuration
* firewall setup
* etc
