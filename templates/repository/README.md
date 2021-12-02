{{ main_domain }} Cluster Repository
====================================

This repository represents a state of a Kubernetes cluster located at {{ main_domain }}.
Each change is synchronized into the cluster.

**Notice:** Be careful about who can write to the repository. A good practice is to set up protected branches.

Structure
---------

- src: Source files (Kubernetes YAML resources) of your applications, roles, security policies etc. Not synchronized out-of-the-box, needs to be set-up per application.
- definitions: Defines applications to be installed in cluster, can point to an external Helm, external repository, or to this repository to subdirectory located in `src` directory

Split
-----

- definitions/infrastructure: Infrastructural applications installed by this Ansible role
- definitions/applications: Your applications e.g. a blog, git instance, matrix chat instance etc.
