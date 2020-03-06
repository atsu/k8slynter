# k8slynter
For validating Kubernetes yaml

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

### `yaml-path`

**Required** The path to the k8s yaml to validate, relative to `"/github/workspace/"` Can be a file or directory. If a directory, then only files that end in `.yaml` or `.yml` are validated.

## Example usage

uses: atsu/k8slynter@v1
with:
  yaml-path: 'test.yaml'
