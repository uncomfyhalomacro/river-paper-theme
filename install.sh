#!/bin/bash

echo -e "This will remove your previous configuration assuming it is a symlink, are you sure? y - confirm; any letter - to abort"

read -r answer

if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then

    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    for i in {river,mako,yambar,foot}; do
        CONF_DIR="${HOME}/.config/${i}"
        if [ -d  "$CONF_DIR" ]; then
            BACKUP_DIR="$HOME"/.config/riverconfigbackup
            mkdir -p "$BACKUP_DIR"
            cp -frv "$CONF_DIR" "$BACKUP_DIR"
            rm -rf "$CONF_DIR"
            cp -frv "$SCRIPT_DIR"/"$i" "$CONF_DIR"
        else
            # Check if it is a symlink file
            if [ -h "$CONF_DIR" ]; then
                rm "$CONF_DIR"
                cp -rfv "$SCRIPT_DIR"/"$i" "$HOME"/.config 
            else
                cp -rfv "$SCRIPT_DIR"/"$i" "$HOME"/.config
            fi
        fi
    done
    echo "Done copying configs"
    echo "Now replacing paths using host username: ${USER}"
    sleep 2s
	sed -i 's/uncomfy/'"${USER}"'/g' "$HOME"/.config/yambar/config.yml
    echo "DONE"
else
    echo "Aborted"
    exit
fi


