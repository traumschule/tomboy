[Ansible](https://ansible.com) [Playbook](https://docs.ansible.com/ansible/latest/playbooks.html) to build Steve Bannon's [Tomboy NG](http://www.bannons.id.au/tomboy)/Pascal rewrite from source.

# Dependencies

* python-pip
* ansible (install with `pip install ansible`)

# Build Tomboy NG/Pascal
`ansible-playbook tomboy.yml`

Please open an issue here if it fails on your OS, or write to the [mailinglist](http://lists.beatniksoftware.com/listinfo.cgi/tomboy-list-beatniksoftware.com)

## with RichMemo

`ansible-playbook tomboy.yml -e with_memo=true`

List what it will do:

`ansible-playbook tomboy.yml --list-tasks`

# Run parts

In case you want to only run some parts:

`ansible-playbook tomboy.yml --list-tags`

## Install dependencies

`ansible-playbook tomboy.yml --tags deps`

## Download libraries 

`ansible-playbook tomboy.yml --tags libs`

## Download / exrtact source

`ansible-playbook tomboy.yml --tags build`

## Try to build

`ansible-playbook tomboy.yml --tags build`
