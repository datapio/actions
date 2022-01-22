# klifter Github Action

This actions will run [klifter](https://klifter.datapio.co) against a Kubernetes
cluster.

## Inputs

### `path`

**Required.** Path to *klifter* project, relative to current workspace.

### `kubeconfig`

**Required.** Path to Kubernetes configuration file, relative to current workspace.

## Example usage

```yaml
uses: datapio/actions/klifter@main
with:
  path: "${{ env.GITHUB_WORKSPACE }}/.klifter"
  kubeconfig: path/to/kubeconfig.yml
```
