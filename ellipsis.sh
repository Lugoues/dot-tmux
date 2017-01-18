#!/usr/bin/env bash
#
# lugoues/tmux ellipsis package

# The following hooks can be defined to customize behavior of your package:
 pkg.install() {
     fs.link_files $PKG_PATH
     git submodule update --init --recursive
 }

# pkg.push() {
#     git.push
# }

 pkg.pull() {
     git.pull
     git submodule update --recursive
 }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
