#!/usr/bin/env bash
CAVE_GITHUB_REPO=https://github.com/ProjectGoblin/cave.git
CAVE_LOCAL_REPO="$HOME/.cave"
git clone $CAVE_GITHUB_REPO $HOME/.cave
export CAVE_ROOT=$CAVE_LOCAL_REPO
export PATH="$PATH:$CAVE_LOCAL_REPO/bin"
