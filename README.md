# devto's GitHub Action

[![Tests](https://github.com/shihanng/devto-act/workflows/Tests/badge.svg)](https://github.com/shihanng/devto-act/actions?query=workflow%3ATests)
[![GitHub](https://img.shields.io/github/license/shihanng/devto-act)](https://github.com/shihanng/devto-act/blob/trunk/LICENSE)

`devto-act` is a GitHub Action that helps you to submit your article to [DEV](https://dev.to/) from GitHub. It uses [devto](https://github.com/shihanng/devto) internally.

## Inputs

### `devto_api_key`

We need this to submit the article. You can get it from <https://dev.to/settings/account>.

### `skip_generate`

Skip generation of links.

### `published`

Make the article public if non empty.

### `dry_run`

Dry run if not empty. Will not send to [DEV](https://dev.to/).

### `auto_prefix`

Generate prefix (cover) image links based on the branch and path to markdown files. Will be applied to the `devto submit` as the value of `--prefix` flag.

### `markdown_files`

**Required** Path to markdown files (space separated) to be submitted. Can be relative to the root of the repository.

## Example Usage

```yml
- name: Publish to DEV
  uses: shihanng/devto-act@v0.0.6
  with:
    auto_prefix: "yes"
    markdown_files: "filename.md"
  env:
    DEVTO_API_KEY: ${{ secrets.DEVTO_API_KEY }}
```
