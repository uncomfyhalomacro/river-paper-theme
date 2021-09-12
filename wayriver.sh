#!/bin/sh

# Runtime Directory
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 700 "${XDG_RUNTIME_DIR}"
	fi
fi

export XDG_CONFIG_HOME=$HOME/.config/

# Start river
exec river-run.sh
