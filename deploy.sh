#!/usr/bin/env bash
sources=$(nix-build nix/sources-dir.nix --no-out-link)
nixos-rebuild build --show-trace --use-remote-sudo -I "$sources" -I "nixos-config=$PWD/configuration.nix"
