# oasdiff-action
[![CI](https://github.com/Tufin/oasdiff-action/actions/workflows/test.yaml/badge.svg)](https://github.com/Tufin/oasdiff-action/actions)

GitHub action for comparing OpenAPI specs, based on [oasdiff](https://github.com/Tufin/oasdiff) tool

## How to use?
Copy and paste the following snippet into your build .yml file:
```
- name: Running OpenAPI Spec diff action
  id: test_breaking_changes
  uses: Tufin/oasdiff-action@v2.1.3
  with:
    base: 'specs/base.yaml'
    revision: 'specs/revision-breaking-changes.yaml'
    format: 'text'
    check-breaking: true
    fail-on-diff: true
```

## Inputs

### `base`
**Required** path of original OpenAPI spec in YAML or JSON format
### `revision`
**Required** path of revised OpenAPI spec in YAML or JSON format
### `format`
**Optional** output format: yaml, text or html (default "yaml")
### `fail-on-diff`
**Optional** fail with non 0 exit code if a difference is found
### `check-breaking`
**Optional** display breaking changes (new method)
### `breaking-only` [Deprecated]
**Optional** display breaking changes (old method)
