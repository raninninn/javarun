#!/bin/bash
/usr/lib/jvm/openjdk11/bin/javac $1/*.java
cd $1
let i=$(( $( echo $1 | wc -m ) ))-1
ARGS=$( echo "$@" | cut -d ' ' -f 2- )
/usr/lib/jvm/openjdk11/bin/java main $ARGS
