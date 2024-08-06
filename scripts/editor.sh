#!/bin/sh
editor=$(gum choose --limit 1 "hx" "code" "nano" )
$editor $(gum filter)