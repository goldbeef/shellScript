#!/bin/bash

name=hello

cat <<limitstring
    sdfsdf
    $name
    sdfsdf
    sdfsdf
limitstring

echo; echo
cat <<-limitstring
    sdfsdf
    $name
    sdfsdf
    sdfsdf
limitstring

echo; echo
cat <<'limitstring'
    sdfsdf
    $name
    sdfsdf
    sdfsdf
limitstring

echo; echo
cat <<"limitstring"
    sdfsdf
    $name
    sdfsdf
    sdfsdf
limitstring

echo; echo
cat <<\limitstring
    sdfsdf
    $name
    sdfsdf
    sdfsdf
limitstring
