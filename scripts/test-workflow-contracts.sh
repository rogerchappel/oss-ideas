#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ci_workflow="$repo_root/.github/workflows/ci.yml"
docs_workflow="$repo_root/.github/workflows/docs.yml"

grep -F 'run: scripts/validate-template.sh' "$ci_workflow" >/dev/null
if grep -F 'required_template_files=(' "$ci_workflow" >/dev/null; then
  echo "CI must not duplicate the authoritative template file list" >&2
  exit 1
fi

for path in \
  "scripts/check-relative-markdown-links.sh" \
  "scripts/test-check-relative-markdown-links.sh"
do
  count="$(grep -F -c -- "- '$path'" "$docs_workflow")"
  if [ "$count" -ne 2 ]; then
    echo "Expected Docs pull_request and push triggers for $path" >&2
    exit 1
  fi
done

echo "Workflow contract regression checks passed."
