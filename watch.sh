#!/bin/bash

commandArray=( "$@" );
COMMANDS="${commandArray[*]}"
while :; do
	clear;
	$COMMANDS;
	sleep 2;
done
