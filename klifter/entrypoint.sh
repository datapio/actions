#!/bin/sh

set -e

export K8S_STATE_USER="$(whoami)"
export K8S_STATE_SOURCE_KIND="local"
export K8S_STATE_SOURCE_LOCAL_DIR="${INPUT_PATH}"

cd /workspace
poetry run ansible-playbook site.yml
