#!/bin/sh
name="ahri/base"
version=$(cat VERSION)

tag="$name:$version"
docker build -t $tag .
docker tag $tag $name:latest