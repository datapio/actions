#!/bin/sh

set -e

mkdir -p $HOME/.kube
echo $INPUT_KUBECONFIG | base64 -d > $HOME/.kube/config

export K8S_STATE_SOURCE_KIND="local"
export K8S_STATE_SOURCE_LOCAL_DIR="${INPUT_PATH}"

cd /workspace
poetry run ansible-playbook site.yml
