ansible-role-foreman-db
=========

Ansible role to deploy a postgresql server from distro package

Requirements
------------

It is designed to be include as a submodule to a project with its siblings :

* `ansible-role-foreman-db`
* `ansible-role-foreman-puppet`
* `ansible-role-foreman-proxy`
* `ansible-role-foreman-app` (this one)
* `ansible-role-foreman-custom`

`ansible-role-mirror` should help you get started with mirroring needed repositories.

Role Variables
--------------

The role needs some vars (default/main.yml)

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

```
- hosts: tfm_db
  gather_facts: true
  roles:
    - role: foreman-db
```

License
-------

CC-BY-4.0

Author Information
------------------

Thomas Basset -- hobbyist sysadm <tomm+code@loxda.net>
