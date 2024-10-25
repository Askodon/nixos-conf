#!/bin/sh
if pgrep -x "skippy-xd" > /dev/null; then
    kill $(pidof skippy-xd)
fi
skippy-xd 
