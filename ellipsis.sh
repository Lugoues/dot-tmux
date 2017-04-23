#!/usr/bin/env bash
#
# lugoues/tmux ellipsis package

# The following hooks can be defined to customize behavior of your package:
 pkg.install() {
     fs.link_files $PKG_PATH
     git submodule update --init --recursive
     tmux -c ~/.tmux/plugins/tundle/scripts/install_plugins.sh

     tic -x ~/.tmux/tmux.terminfo
 }

# pkg.push() {
#     git.push
# }

 pkg.pull() {
     git.pull
     git submodule update --recursive
     tmux -c ~/.tmux/plugins/tundle/scripts/install_plugins.sh
 }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
