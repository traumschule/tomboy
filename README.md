[Ansible](https://ansible.com) [Playbook](https://docs.ansible.com/ansible/latest/playbooks.html) to build [David Bannon](mailto:dbannon@internode.on.net)'s [Tomboy NG](http://www.bannons.id.au/tomboy)/Pascal rewrite from source.

[![Build Status](https://travis-ci.org/traumschule/tomboy.svg?branch=master)](https://travis-ci.org/traumschule/tomboy)

# Dependencies

* python-pip
* ansible (install with `pip install ansible`)

# Build Tomboy NG/Pascal

To install all dependencies and try to build, run
```
./bin/configure.sh
```
This is equivalent to
```
ansible-playbook tomboy.yml
```

If you edited the code and want to rebuild:
```
./bin/make.sh
```
or
```
ansible-playbook tomboy.yml --tags build
```

List what it will do:
```
ansible-playbook tomboy.yml --list-tasks
```

The playbook shoudl run multiple systems (although it was tested on Debian derivates). Please open an [issue on github](https://github.com/traumschule/tomboy/issues) if it fails on your OS, or write to the [mailinglist](http://lists.beatniksoftware.com/listinfo.cgi/tomboy-list-beatniksoftware.com)

## with RichMemo

`ansible-playbook tomboy.yml -e with_memo=true`

# Run parts

In case you want to only run some parts:

`ansible-playbook tomboy.yml --list-tags`

## Install dependencies

`ansible-playbook tomboy.yml --tags deps`

## Download libraries 

`ansible-playbook tomboy.yml --tags libs`

## Download / extract source

`ansible-playbook tomboy.yml --tags source`

## Try to build

`ansible-playbook tomboy.yml --tags build`
