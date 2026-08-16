#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

links_file="$(mktemp)"
trap 'rm -f "$links_file"' EXIT

if [ "$#" -gt 0 ]; then
  printf '%s\0' "$@"
else
  find . -type f -name '*.md' -not -path './.git/*' -not -path './templates/*' -print0
fi |
  xargs -0 -r perl -ne '
    if ($ARGV ne $current_file) {
      $current_file = $ARGV;
      $fence_character = "";
      $fence_length = 0;
    }

    if (/^\s*((?:\x60{3,})|(?:~{3,}))/) {
      my $marker = $1;
      my $character = substr($marker, 0, 1);
      my $length = length($marker);

      if (!$fence_character) {
        $fence_character = $character;
        $fence_length = $length;
      } elsif ($character eq $fence_character && $length >= $fence_length) {
        $fence_character = "";
        $fence_length = 0;
      }
      next;
    }

    next if $fence_character;
    s/(\x60+).*?\1//g;

    while (/\[[^\]]+\]\(([^):#][^)]*)\)/g) {
      my $target = $1;
      $target =~ s/[?#].*//;
      next if $target eq "" || $target =~ /^mailto:/ || $target =~ /^[a-zA-Z][a-zA-Z0-9+.-]*:\/\//;
      print "$ARGV:$.:$target\n";
    }
  ' > "$links_file"

while IFS=: read -r file _line target; do
  dir="$(dirname "$file")"
  path="$dir/$target"
  case "$target" in
    /*) path=".$target" ;;
  esac

  test -e "$path" || {
    echo "Broken markdown link in $file: $target"
    exit 1
  }
done < "$links_file"
