# klander Github Action

This actions will run [klander](https://klander.datapio.co) against a Kubernetes
cluster.

## Inputs

### `kubeconfig`

**Required.** Path to Kubernetes configuration file, relative to current workspace.

## Example usage

```yaml
uses: datapio/actions/klander@main
with:
  kubeconfig: path/to/kubeconfig.yml
```
