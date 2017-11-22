#!/bin/bash
# stripped from https://github.com/pyca/cryptography/blob/master/.travis/install.sh
set -exv
if [[ "$(uname -s)" == 'Darwin' ]]; then
    sw_vers
    brew update || brew update
    brew install --HEAD --without-readline --without-xz --without-gdbm --without-sqlite python3

   # https://github.com/MacPython/terryfy
    #git clone https://github.com/MacPython/terryfy
    #source terryfy/travis_tools.sh
    #get_python_environment  macpython 2.7.10

   # Install pyenv
    #git clone --depth 1 https://github.com/pyenv/pyenv ~/.pyenv
    #PYENV_ROOT="$HOME/.pyenv"
    #PATH="$PYENV_ROOT/bin:$PATH"
    #eval "$(pyenv init -)"

   # thanks ogrisel https://github.com/travis-ci/travis-ci/issues/2312#issuecomment-43328069
   # http://blog.smalleycreative.com/administration/automating-osx-part-one/
   # https://github.com/matthew-brett/multibuild

   # Once official Python binaries are installed on install pip
    curl -O https://bootstrap.pypa.io/get-pip.py # 1.5mb
    python get-pip.py --user
    pyenv rehash
    python -m pip install --user virtualenv

   # https://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-on-mac-osx
    #sudo easy_install pip
fi
