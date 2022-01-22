#!/bin/sh

set -e

export K8S_STATE_USER="$(whoami)"
export K8S_STATE_SOURCE_KIND="local"

case "$1" in
  /*)
    echo "::error::Path should be relative and not absolute"
    exit 1
    ;;

  *)
    export K8S_STATE_SOURCE_LOCAL_DIR="/github/workspace/$1"
    ;;
esac

case "$KUBECONFIG" in
  /*)
    echo "::error::KUBECONFIG environment variable should be relative and not absolute"
    exit 1
    ;;

  "")
    export KUBECONFIG="/github/home/.kube/config"
    ;;

  *)
    export KUBECONFIG="/github/workspace/$KUBECONFIG"
    ;;
esac

echo "::debug::K8S_STATE_USER=${K8S_STATE_USER}"
echo "::debug::K8S_STATE_SOURCE_KIND=${K8S_STATE_SOURCE_KIND}"
echo "::debug::K8S_STATE_SOURCE_LOCAL_DIR=${K8S_STATE_SOURCE_LOCAL_DIR}"
echo "::debug::KUBECONFIG=${KUBECONFIG}"

cd /workspace
poetry run ansible-playbook site.yml
