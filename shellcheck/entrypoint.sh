#!/bin/sh

set -e

if test -z "${1:-}"; then
    git ls-files "*.sh" "*.bash" | xargs shellcheck --external-sources
else
    git ls-files "*.sh" "*.bash" | grep -v "$1" | xargs shellcheck --external-sources
fi
