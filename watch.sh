#!/bin/bash
infinite_watch (){
	while :; do
		clear;
		$@;
		sleep 2;
	done
}

watch_with_interval(){
	interval=$1
	shift
	rest=$@
	while [ $SECONDS -lt $interval ]; do
		clear;
		 $rest
		sleep 2;
	done

}
