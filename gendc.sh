#!/bin/bash

# TODO: TYPE should be generated from folder automaticlly
wrong_using(){
  echo "script usage: $(basename $0) [-t workpath] [-l php|golang]" >&2
  exit 1
}

while getopts 'l:t:' arg; do
  case "$arg" in
    l)
      TYPE="$OPTARG"
      ;;
    t)
      TAR_PATH="$OPTARG"
      ;;
    ?)
      wrong_using
      exit 1
      ;;
  esac
done

if [[ $OPTIND != 5 ]]; then
  wrong_using
fi


if [ -d $TAR_PATH ]; then
  IS_PATH=1
else
  IS_PATH=0
fi

if [ $IS_PATH -ne 1 ]; then
  echo "workpath must be a folder"
  wrong_using
fi

if [ $TYPE = "php" ] || [ $TYPE = "golang" ]; then
  RIGHT_TYPE=1
else
  RIGHT_TYPE=0
fi

if [ $RIGHT_TYPE = 0 ]; then
  echo "only support 'php' or 'golang' now"
  wrong_using
fi

DC_PATH=$TAR_PATH.devcontainer
mkdir $DC_PATH
cp -r ./$TYPE/* $DC_PATH