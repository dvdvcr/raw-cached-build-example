#!/bin/sh
OS=ubuntu
RELEASE=jammy
DOCKERTAG="local/shrekbuntu"

mkosi -d $OS -r $RELEASE -t directory --extra-tree mkosi.extras --checksum --xz -i
docker build -t $DOCKERTAG
