#!/bin/bash
git config --global core.editor 'code -nw'
# git config --global credential.helper store
git config --global diff.guitool 'code'
git config --global difftool.code.cmd 'code -dnw "$LOCAL" "$REMOTE"'
git config --global merge.guitool 'code'
git config --global mergetool.code.cmd 'code -nw "$MERGED"'
git config --global mergetool.code.trustExitCode false
# git config --global user.email agate-pris@users.noreply.github.com
# git config --global user.name agate-pris
git config --global user.useConfigOnly true
git config --global url.https://agate-pris@github.com/agate-pris/.insteadOf https://github.com/agate-pris/
