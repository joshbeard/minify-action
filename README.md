# Minify Action
[![MIT license](https://img.shields.io/github/license/anthonyftwang/minify-action.svg?color=blue)](https://github.com/anthonyftwang/minify-action/blob/master/LICENSE)

Forked from
[anthonyftwang/minify-action](https://github.com/anthonyftwang/minify-action)
to update versions.

Github Action to minify js, css, and html files pushed to a branch, using the
[Minify](https://github.com/coderaiser/minify) package.

### Usage

Here the target branch is `foo`. You need to checkout your repository so the
Minify Action job can access it. Then, you can auto-commit the files to the
repository if desired.

```yaml
name: Minify Workflow
on:
  push:
    branches: [ foo ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          ref: ${{ github.ref }}

      - name: Minify Action
        uses: joshbeard/minify-action@v1.1.0
```
