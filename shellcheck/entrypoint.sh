#!/bin/sh

set -e

git config --global --add safe.directory /github/workspace

if test -z "${1:-}"; then
    git ls-files "*.sh" "*.bash" | xargs shellcheck --external-sources
else
    git ls-files "*.sh" "*.bash" | grep -v "$1" | xargs shellcheck --external-sources
fi
