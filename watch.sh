#!/bin/bash
. implementations.sh
while [ ! $# -eq 0 ]
do
	case "$1" in
		--help | -h)
			helpmenu
			exit
			;;
		--interval | -n)
			flag=$2
			shift 2
			rest=$@
			watch_with_interval $flag $rest
			exit
			;;
		*)
			echo $@
			infinite_watch $@
			exit
	esac
	shift
done
