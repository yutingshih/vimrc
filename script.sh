#!/usr/bin/bash

# This script does two things
#
# 1. Apply new vim settings using this repo's .vimrc
#    $ ./script.sh install
#
# 2. revert to the old vim settings
#    $ ./script.sh uninstall


SCRIPT=script.sh
ACTIVE_VIMRC=~/.vimrc
BACKUP_VIMRC=./backup-vimrc

help() {
    printf "\n"
    printf "$SCRIPT help       show this help message\n"
    printf "$SCRIPT install    apply new vim settings\n"
    printf "$SCRIPT uninstall  revert to the old vim settings\n"
    printf "\n"
}

install() {
    # add initial empty .vimrc file if it does not exist
    [[ ! -f $ACTIVE_VIMRC ]] && touch $ACTIVE_VIMRC

    if [[ ! -f "$BACKUP_VIMRC" ]]; then
        # backup old .vimrc file
        mv $ACTIVE_VIMRC $BACKUP_VIMRC

        # apply new .vimrc file
        cp ./vimrc $ACTIVE_VIMRC
        echo "New vim settings are applied. Type \"./$SCRIPT uninstall\" if you want to revert."
    else
        echo "New vim settings have already been installed. Nothing happened."
        echo "If you want to reinstall, try \"./$SCRIPT uinstall\" first."
    fi
}

uninstall() {
    if [[ -f "$BACKUP_VIMRC" ]]; then
        mv $BACKUP_VIMRC $ACTIVE_VIMRC
        echo "The vim settings are reverted. Type \"./$SCRIPT install\" if you want to reinstall."
    else
        echo "The vim settings have not been installed yet. Nothing happened."
    fi
}

$1
