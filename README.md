# git-deploy-test

Automated Deploy with Github Actions.

Only working in Posix evironments. If you are using MINGW or CYGWIN make sure to set your npm script-shell to the coresponding bash location.

## Setup

```sh
curl -s https://raw.githubusercontent.com/korki43/gh-pages-auto-deploy/main/setup.sh | bash
```

_**Note:** You need npm v7 to use this script. This script performs the steps listed beneath._

## Instructions

Change [`publish_dir`](./.github/workflows/ci.yaml#L29), [`asset_path`](./.github/workflows/ci.yaml#L60) and the [`zip`](./.github/workflows/ci.yaml#L51) in [ci.yaml](./.github/workflows/ci.yaml) command to match your build directory.

Copy `changelog-template.md` to `changelog.md` and the `.github` directory.
Copy the `pre-`, `post-` and `version` scripts in your `package.json`

## License

[CC0 - Public Domain](https://creativecommons.org/publicdomain/zero/1.0/)
