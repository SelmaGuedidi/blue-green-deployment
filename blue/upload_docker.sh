#!/usr/bin/env bash

dockerpath=testblueimage

# tag & Authenticate (if needed) 
echo "Docker ID and Image: $dockerpath"
docker tag testblueimage selmaguedidi/testblueimage

# Push image to a docker repository
docker push selmaguedidi/testblueimage
