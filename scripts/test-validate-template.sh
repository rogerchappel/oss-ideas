#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
fixture_dir="$(mktemp -d)"
trap 'git -C "$repo_root" worktree remove --force "$fixture_dir" >/dev/null 2>&1 || true' EXIT

git -C "$repo_root" worktree add --detach "$fixture_dir" HEAD >/dev/null
rm "$fixture_dir/templates/docs-site/src/content/docs/contributing.mdx"

if "$fixture_dir/scripts/validate-template.sh" >"$fixture_dir/validation-output.txt" 2>&1; then
  echo "Expected template validation to reject a missing contributing page" >&2
  exit 1
fi

grep -F 'missing required file: templates/docs-site/src/content/docs/contributing.mdx' \
  "$fixture_dir/validation-output.txt" >/dev/null

echo "Template validation regression checks passed."
