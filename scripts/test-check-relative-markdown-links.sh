#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
checker="$repo_root/scripts/check-relative-markdown-links.sh"
fixture_dir="$(mktemp -d)"
trap 'rm -rf "$fixture_dir"' EXIT

touch "$fixture_dir/existing.md"

cat > "$fixture_dir/valid.md" <<'EOF'
Use `valid.md` beside a [real target](existing.md).
The literal example `[label](placeholder)` is not a link.

```markdown
[Example target that need not exist](example-only.md)
```
EOF

"$checker" "$fixture_dir/valid.md"

cat > "$fixture_dir/broken.md" <<'EOF'
Use `broken.md` beside a [missing target](missing.md).
EOF

if "$checker" "$fixture_dir/broken.md" > "$fixture_dir/output.txt" 2>&1; then
  echo "Expected a missing relative link beside inline code to fail" >&2
  exit 1
fi

grep -F 'Broken markdown link' "$fixture_dir/output.txt" >/dev/null
grep -F 'missing.md' "$fixture_dir/output.txt" >/dev/null

echo "Relative markdown link regression checks passed."
