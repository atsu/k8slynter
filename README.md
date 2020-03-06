# k8slynter
For validating/linting Kubernetes yaml

## Inputs

### `yaml-path`

**Required** The path to the k8s yaml to validate, relative to `"/github/workspace/"` Can be a file or directory. If a directory, then only files that end in `.yaml` or `.yml` are validated.

## Example usage

uses: atsu/k8slynter@master
with:
  yaml-path: 'test.yaml'
