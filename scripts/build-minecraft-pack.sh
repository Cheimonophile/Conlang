#!/usr/bin/env bash
# Zip minecraft_pack/ with git archive and install it into the resourcepacks
# folder of the Minecraft installation named by MINECRAFT_DIR in .env.
#
# The zip is built from a snapshot of the working tree (git stash create), so it
# holds tracked files only — ignored and untracked files are left out — and
# includes uncommitted edits to tracked files.
set -euo pipefail

pack_name="Conlang"

repo_root="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"
cd "$repo_root"

if [[ ! -f .env ]]; then
  echo "error: no .env in $repo_root — copy .env.example to .env and set MINECRAFT_DIR" >&2
  exit 1
fi
set -a; source .env; set +a
: "${MINECRAFT_DIR:?MINECRAFT_DIR is not set in .env}"

dest_dir="$MINECRAFT_DIR/resourcepacks"
if [[ ! -d "$dest_dir" ]]; then
  echo "error: $dest_dir does not exist — check MINECRAFT_DIR in .env" >&2
  exit 1
fi

snapshot="$(git stash create)"
snapshot="${snapshot:-HEAD}"

tmp_zip="$(mktemp "$dest_dir/.$pack_name.XXXXXX")"
trap 'rm -f "$tmp_zip"' EXIT
git archive --format=zip -o "$tmp_zip" "$snapshot:minecraft_pack"
mv "$tmp_zip" "$dest_dir/$pack_name.zip"
trap - EXIT

echo "Installed $dest_dir/$pack_name.zip"
