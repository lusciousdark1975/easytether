#!/usr/bin/env bash

VERSION=0.8.9-1

archs=( i686 x86_64 arm armv6h armv7h aarch64 )
for arch in "${archs[@]}"
do
    mkdir -p $arch
    rm $arch/easytether-*.pkg.tar.*
    wget -P $arch http://www.mobile-stream.com/beta/arch/easytether-$VERSION-$arch.pkg.tar.xz
    repo-add $arch/easytether.db.tar.xz $arch/easytether-*.pkg.tar.*
    rm $arch/easytether.*.old
done
