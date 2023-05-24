#!/usr/bin/env bash
set -e -u -o pipefail

tag="$(grep -oP '(?<=yamllint==).*' requirements.txt)"
msg="Release $tag

- yamllint: $tag"

git tag -s "$tag" -m "$msg"
