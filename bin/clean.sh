#!/bin/bash
set -e
cd $(dirname $0)/..
rm -rf src lib lazconf *.retry
if [ "$1" = 'all' ] ; then
  #rm -rf cache
  echo
else
  echo "Leaving cache ($(du -ms cache|cut -f1)mb) behind. Rerun with 'all' parameter to remove it."
fi
