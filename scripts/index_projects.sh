#!/bin/sh

# This is a hacky solution for indexing all projects
# so you can open them with ctrl + o

# Tip: hold down shift+z to run through them fast

for p in $1/*
do
    nvim $p
done
