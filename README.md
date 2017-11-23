# Build script for tomboy-ng

[Ansible](https://ansible.com) [Playbook](https://docs.ansible.com/ansible/latest/playbooks.html) to build [David Bannon](mailto:dbannon@internode.on.net)'s [tomboy-ng](https://github.com/tomboy-notes/tomboy-ng), a rewrite of [Tomboy NG](https://wiki.gnome.org/Apps/Tomboy) in [Pascal]() with [Lazarus](http://wiki.lazarus.freepascal.org).

[![Build Status](https://travis-ci.org/traumschule/tomboy.svg?branch=master)](https://travis-ci.org/traumschule/tomboy)

## Dependencies
To run the playbook these need to be installed
* python
* pip
* ansible (install with `pip install ansible`)
The playbook should run on multiple systems (Debian derivates and Mac). If it fails, please [create an issue](https://github.com/traumschule/tomboy/issues) or write to the [mailinglist](http://lists.beatniksoftware.com/listinfo.cgi/tomboy-list-beatniksoftware.com).

## Build and run tomboy-ng

Install dependencies and build:
```
./bin/configure.sh
```
This is equivalent to
```
ansible-playbook tomboy.yml
```

After changing the code, rebuild with
```
./bin/make.sh
```
or
```
ansible-playbook tomboy.yml --tags build
```

### What it does
- install Lazarus 1.8
- download KControls
- download tomboy-ng
- build and run
To show the task list, run
```
ansible-playbook tomboy.yml --list-tasks
```

### Partials runs

In case you want to only run some parts:

`ansible-playbook tomboy.yml --list-tags`

#### Install dependencies

`ansible-playbook tomboy.yml --tags deps`

#### Download libraries 

`ansible-playbook tomboy.yml --tags libs`

#### Try to build

`ansible-playbook tomboy.yml --tags build`
