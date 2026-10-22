#!/usr/bin/env bash
set -euo pipefail

# Codex Cloud setup: retrieve pinned public sources, without executing their scripts.
repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$repo_dir"
temp_dir="$(mktemp -d)"
trap 'rm -rf -- "$temp_dir"' EXIT

fetch_source() {
  local project="$1" repository="$2" revision="$3"
  mkdir -p "$temp_dir/$project"
  curl --fail --location --retry 3 --silent --show-error \
    "https://codeload.github.com/$repository/tar.gz/$revision" \
    --output "$temp_dir/$project.tar.gz"
  tar -xzf "$temp_dir/$project.tar.gz" -C "$temp_dir/$project" --strip-components=1
}

fetch_source nature 'Yuan1z0825/nature-skills' \
  'c6ae86c742705fd968b13c79db1a8518a84089d4'
fetch_source kdense 'K-Dense-AI/scientific-agent-skills' \
  '593377bb048752abb0152deab9fbb1083a6087df'
fetch_source academic 'Imbad0202/academic-research-skills-codex' \
  '71528d9349bcdacfbe94111f06d9e2d82215a44d'

mkdir -p .agents/skills licenses
for name in \
  nature-academic-search nature-statistics nature-figure nature-writing \
  nature-polishing nature-reviewer nature-response nature-data \
  nature-paper2ppt nature-shared; do
  cp -a "$temp_dir/nature/skills/$name" .agents/skills/
done

for name in scientific-brainstorming scientific-visualization literature-review; do
  cp -a "$temp_dir/kdense/skills/$name" .agents/skills/
done

cp -a "$temp_dir/academic/skills/academic-research-suite" .agents/skills/
cp -a "$temp_dir/nature/LICENSE" licenses/nature-skills-LICENSE
cp -a "$temp_dir/kdense/LICENSE.md" licenses/scientific-agent-skills-LICENSE.md
cp -a "$temp_dir/academic/LICENSE" licenses/academic-research-suite-LICENSE

count=0
for skill_file in .agents/skills/*/SKILL.md; do
  [[ -f "$skill_file" ]] || continue
  count=$((count + 1))
done
if [[ "$count" -ne 14 ]]; then
  echo "Installation incomplete: expected 13 Skills and nature-shared, found $count" >&2
  exit 1
fi
echo 'Installed 13 research Skills and nature-shared into .agents/skills/'
