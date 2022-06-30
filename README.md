# oasdiff-action
[![CI](https://github.com/Tufin/oasdiff-action/actions/workflows/test.yaml/badge.svg)](https://github.com/Tufin/oasdiff-action/actions)

GitHub action for comparing OpenAPI specs, based on [oasdiff](https://github.com/Tufin/oasdiff) tool

## How to use?
Copy and paste the following snippet into your build .yml file:
```
- name: Running OpenAPI Spec diff action
  id: test_breaking_changes
  uses: Tufin/oasdiff-action@v2
  with:
    base: 'specs/base.yaml'
    revision: 'specs/revision-breaking-changes.yaml'
    format: 'text'
    breaking-only: true
    fail-on-diff: true
```

## Inputs

### `base`
**Required** path of original OpenAPI spec in YAML or JSON format
### `revision`
**Required** path of revised OpenAPI spec in YAML or JSON format
### `format`
**Optional** output format: yaml, text or html (default "yaml")
### `breaking-only`
**Optional** display breaking changes only
### `fail-on-diff`
**Optional** fail with exit code 1 if a difference is found
