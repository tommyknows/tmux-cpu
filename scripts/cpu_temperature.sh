#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

print_cpu_temperature() {
	temp=$(/Applications/smcFanControl.app/Contents/Resources/smc -k TG0P -r | awk '{print $3}')
	printf "%5.1f" $temp
}

main() {
	print_cpu_temperature
}
main
