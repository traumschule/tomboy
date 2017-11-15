#!/bin/sh
cd $(dirname $0)/..
bin=$(which ansible-playbook)
if [ -z $bin ]
then echo "Please install ansible: pip install ansible."; exit 1; fi
$bin  tomboy.yml --tags build $@
