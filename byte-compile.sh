#!/bin/sh

#initsディレクトリ内で使うようにする
emacs -batch -f batch-byte-compile inits/*.el
