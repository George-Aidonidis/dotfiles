#!/bin/sh
CURRENT=$(xkblayout-state print %s)

if [ $CURRENT != "us" ]
then
	xkb-switch -n
	$1
	xkb-switch -n
	exit 0
else
	$1
	exit 0
fi