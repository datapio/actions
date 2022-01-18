# klander Github Action

This actions will run [klander](https://klander.datapio.co) against a Kubernetes
cluster.

## Inputs

### `kubeconfig`

**Required.** Base64 encoded Kubernetes configuration file.

## Example usage

```yaml
uses: datapio/actions/klander@main
with:
  kubeconfig: ${{ secrets.KUBECONFIG }}
```
