# klander Github Action

This actions will run [klander](https://klander.datapio.co) against a Kubernetes
cluster.

## Example usage

```yaml
uses: datapio/actions/klander@main
env:
  KUBECONFIG: /path/to/.kube/config  # defaults to $HOME/.kube/config
```
