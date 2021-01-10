#!/bin/bash
javac $1/*.java
cd $1
let i=$(( $( echo $1 | wc -m ) ))-1
ARGS=$( echo "$@" | cut -d ' ' -f 2- )
java main $ARGS
