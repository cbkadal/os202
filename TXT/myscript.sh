#!/bin/bash
# Mon Sep 28 21:05:04 WIB 2020

FILES="mylog.txt mypubkey.txt myrank.txt myscript.sh"
SHA="SHA256SUM"

echo "sha256sum $FILES > $SHA"
sha256sum $FILES > $SHA

echo "sha256sum -c $SHA"
sha256sum -c $SHA

echo "gpg -o $SHA.asc -a -sb $SHA"
gpg -o $SHA.asc -a -sb $SHA

echo "gpg --verify $SHA.asc $SHA"
gpg --verify $SHA.asc $SHA

exit 0

