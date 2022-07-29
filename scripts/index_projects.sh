#!/bin/sh

# This is a hacky solution for indexing all projects
# so you can open them with ctrl + o

for p in $1/*
do
    nvim +q $p
done
