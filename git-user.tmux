#!/usr/bin/env bash

source_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${source_path}/scripts/helpers.sh"

do_interpolation() {
	local string="$1"
	local interpolation_string="\#{git_user}"
	local replaced_string="#(${source_path}/scripts/git_user.sh)"
	local interpolated="${string/${interpolation_string}/${replaced_string}}"
	printf %s "$interpolated"
}

main() {
	update_tmux_option "status-right"
	update_tmux_option "status-left"
}
main

unset source_path
