# oasdiff-action
[![CI](https://github.com/Tufin/oasdiff-action/actions/workflows/test.yaml/badge.svg)](https://github.com/Tufin/oasdiff-action/workflows/test.yaml)

GitHub action for comparing OpenAPI specs, based on [oasdiff](https://github.com/Tufin/oasdiff) tool

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
