#!/bin/bash
#_MODULE_DIR_=/root/build/ffmpeg-1.1.1/ffmpeg-1.1.1-bin
_FULLPATH_=$(readlink -f $0)
_MODULE_DIR_=$(dirname $_FULLPATH_)
LD_LIBRARY_PATH=$_MODULE_DIR_ $_MODULE_DIR_/ffprobe "$@"


