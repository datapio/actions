# klifter Github Action

This actions will run [klifter](https://klifter.datapio.co) against a Kubernetes
cluster.

## Inputs

### `path`

**Required.** Path to *klifter* project.

## Example usage

```yaml
uses: datapio/actions/klifter@main
with:
  path: "${{ env.GITHUB_WORKSPACE }}/.klifter"
env:
  KUBECONFIG: /path/to/.kube/config  # defaults to $HOME/.kube/config
```
