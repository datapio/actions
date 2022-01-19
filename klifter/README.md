# klifter Github Action

This actions will run [klifter](https://klifter.datapio.co) against a Kubernetes
cluster.

## Inputs

### `path`

**Required.** Path to *klifter* project.

### `kubeconfig`

**Required.** Base64 encoded Kubernetes configuration file.

## Example usage

```yaml
uses: datapio/actions/klifter@main
with:
  path: "${{ env.GITHUB_WORKSPACE }}/.klifter"
  kubeconfig: ${{ secrets.KUBECONFIG }}
```
