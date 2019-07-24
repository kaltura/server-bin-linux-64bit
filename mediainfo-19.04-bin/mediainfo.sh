#!/bin/bash
_FULLPATH_=$(readlink -f $0)
_MODULE_DIR_=$(dirname $_FULLPATH_)
_BASENAME_=$(basename $_FULLPATH_)
_BINNAME_="${_BASENAME_%.*}"
LD_LIBRARY_PATH=$_MODULE_DIR_ $_MODULE_DIR_/$_BINNAME_ "$@"
