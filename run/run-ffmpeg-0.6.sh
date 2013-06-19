#!/bin/bash

SYSTEM_INI_FILE=/etc/kaltura.d/system.ini
if [ -r "$SYSTEM_INI_FILE" ];then
    . $SYSTEM_INI_FILE
else
    echo "I could not source $SYSTEM_INI_FILE. Exiting."
    exit 1
fi

KALTURA_BIN=$BASE_DIR/bin
KALTURA_BIN_DIRS=$KALTURA_BIN
KALTURA_BIN_FFMPEG=$KALTURA_BIN_DIRS/ffmpeg-0.6-dir
LD_LIBRARY_PATH=$KALTURA_BIN_FFMPEG/lib $KALTURA_BIN_FFMPEG/ffmpeg "$@"
