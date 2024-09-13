#!/usr/bin/env bash

DIR=~/wallpaper

echo $DIR

PICS=($(ls $DIR -I '*.'))
#echo "$PICS"

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

swww query || swww init

echo Setting ${DIR}/${RANDOMPICS}

swww img ${DIR}/${RANDOMPICS} --transition-fps 30 --transition-type any --transition-duration 3