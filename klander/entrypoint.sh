#!/bin/sh

set -e

mkdir -p $HOME/.kube
echo $INPUT_KUBECONFIG | base64 -d > $HOME/.kube/config

exec klander
