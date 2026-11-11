---
name: install-minecraft-pack
description: Zip the Minecraft resource pack in minecraft_pack/ and install it into the local Minecraft resourcepacks folder. Use when asked to build, compile, zip, package, install or deploy the Minecraft pack, or to try translation changes in game.
---

Run `scripts/build-minecraft-pack.sh` from the repo root and report the path it prints.

- The pack is installed as `Conlang.zip`, the zip file itself, in the `resourcepacks` folder. Minecraft reads zipped packs, so never extract the zip there or copy the `minecraft_pack/` folder in unzipped.
- The install location comes from `MINECRAFT_DIR` in `.env` at the repo root. If `.env` is missing, tell the user to copy `.env.example` and set the path; don't create it with a guessed path.
- The zip holds tracked files only, from a snapshot of the working tree. Uncommitted edits to tracked files are included. New untracked files are left out until they're added to git. Tell the user when that applies rather than staging files yourself.
- If Minecraft is running with the pack enabled, the user reloads it with F3+T.
