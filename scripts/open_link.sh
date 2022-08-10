#!/bin/sh

# $1 is the browser name
# $2 is the link

if uname -a | grep -q Darwin; then
    open -a $1 $2
else
    $1 $2
fi
