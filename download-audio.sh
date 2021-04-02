#!/bin/sh

# wrapper around youtube-dl to make common use easier
# provide playlist/video URL and output dir
# Example:
# $ download-audio https://www.youtube.com/playlist?list=PLpRST output_dir

URL=$1
DIR=$2
OUTPUT_TEMPLATE='%(title)s-%(id)s.%(ext)s'
COOKIE_FILE=~/scripts/youtube-dl-private-playlist/newcookiefile.txt

youtube-dl --extract-audio --audio-quality=0 --add-metadata --cookies=$COOKIE_FILE -o $DIR/$OUTPUT_TEMPLATE $URL
