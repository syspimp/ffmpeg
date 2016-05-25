#!/bin/bash
# Some sane defaults for the environment.
LAUNCH_FFSERVER=0
if [ "$1" == "--ffserver" ]
then
  OPTIONS="${*##--ffserver}"
  LAUNCH_FFSERVER=1
elif [ "$1" == "--ffmpeg" ]
then
  OPTIONS="${*##--ffmpeg}"
else
  echo "Usage: $0 [--ffmpeg | --ffserver] <options to pass>"
  exit 1
fi

#echo "CMD OPTIONS: '$OPTIONS'"

if [ $LAUNCH_FFSERVER -eq 0 ]
then
  ffmpeg $OPTIONS
else
  ffserver $OPTIONS
fi

exit 0
