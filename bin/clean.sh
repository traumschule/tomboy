#!/bin/bash
set -e
cd $(dirname $0)/.. && pwd
rm -rf src lib lazconf *.retry
if [ -d cache ]; then
  if [ "$1" = 'all' ] ; then rm -rf cache
  else echo "Leaving cache ($(du -ms cache|cut -f1)mb) behind. Rerun with 'all' parameter to remove it."
  fi
fi
