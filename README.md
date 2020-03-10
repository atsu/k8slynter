# k8slynter
For validating/linting Kubernetes yaml
See: https://github.com/atsu/kubeval
atsu/kubeval is a forked version of https://github.com/instrumenta/kubeval that adds yaml sequence support. 

## Example usage

- name: verify yaml directory
  uses: atsu/k8slynter@master
  with:
    args: -d yaml-dir
        
