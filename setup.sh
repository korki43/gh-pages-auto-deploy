#!/bin/bash

read -p "Enter your build directory: " build_dir

curl -s https://raw.githubusercontent.com/korki43/gh-pages-auto-deploy/main/changelog-template.md > ./changelog.md

mkdir -p ./.github/workflows
curl -s https://raw.githubusercontent.com/korki43/gh-pages-auto-deploy/main/.github/workflows/ci.yaml > ./.github/workflows/ci.yaml

sed -i "s/dist/${build_dir}/g" .github/workflows/ci.yaml

npm set-script preversion "[ \"\$(git branch --show-current)\" != \"main\" ] && echo Not on main branch && exit 1 || echo Preversion checks passed"
npm set-script version "sed -i '/Unreleased/a Changes in the upcoming version are documented here.\\n\\n---\\n\\n## v'\$npm_package_version'' changelog.md && git add changelog.md"
npm set-script postversion "git push && git push --tags"