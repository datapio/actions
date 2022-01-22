#!/bin/sh

set -e

export K8S_STATE_USER="$(whoami)"
export K8S_STATE_SOURCE_KIND="local"
export K8S_STATE_SOURCE_LOCAL_DIR="$1"

echo "::debug::K8S_STATE_USER=${K8S_STATE_USER}"
echo "::debug::K8S_STATE_SOURCE_KIND=${K8S_STATE_SOURCE_KIND}"
echo "::debug::K8S_STATE_SOURCE_LOCAL_DIR=${K8S_STATE_SOURCE_LOCAL_DIR}"

cd /workspace
poetry run ansible-playbook site.yml
