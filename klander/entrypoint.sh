#!/bin/sh

set -e

case "$1" in
  /*)
    echo "::error::Input 'kubeconfig' should be relative and not absolute"
    exit 1
    ;;

  *)
    export KUBECONFIG="/github/workspace/$KUBECONFIG"
    ;;
esac

echo "::debug::KUBECONFIG=${KUBECONFIG}"

exec klander
