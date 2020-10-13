#!/bin/bash
# Cicak bin Kadal
# Tue 13 Oct 2020 10:37:14 AM WIB

FILES="my*.txt my*.sh"
SHA="SHA256SUM"

echo "rm -f $SHA $SHA.asc"
rm -f $SHA $SHA.asc

echo "sha256sum $FILES > $SHA"
sha256sum $FILES > $SHA

echo "sha256sum -c $SHA"
sha256sum -c $SHA

echo "gpg -o $SHA.asc -a -sb $SHA"
gpg -o $SHA.asc -a -sb $SHA

echo "gpg --verify $SHA.asc $SHA"
gpg --verify $SHA.asc $SHA

exit 0

# Mon Sep 28 21:05:04 WIB 2020
# Tue 29 Sep 2020 11:02:39 AM WIB
