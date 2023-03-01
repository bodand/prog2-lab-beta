#!/usr/bin/env sh

git clone "$1" "$2"
cd "$2" || exit 1
git apply --reject --ignore-space-change --ignore-whitespace --whitespace=fix "../$2.patch"

if [ "x$2" = "xlab_01" ]
then
  cd nagyobb || exit 2
fi

cmake -S. -B_build
