#!/usr/bin/env bash

# Changing to working directory
cd $(dirname "$0")
. ../config.sh

#http://chameleon.osx86.hu/file_download/45/Chameleon-2.2svn-r2404-binaries.tar.gz&
# Temp paths and files
export SRC_PKG="http://chameleon.osx86.hu/file_download/42/Chameleon-2.1-r2069.iso.zip"
export TRG_NME="charmeleon"
export TRG_PKG=$TRG_NME".zip"

# Download and deploy it
. ./common/download.sh
wget -O $TMP/$TRG_PKG $SRC_PKG --header="Referer: http://chameleon.osx86.hu/static/some-words-about-donation?ref=file_download/42/Chameleon-2.1-r2069.iso.zip"
unzip $TMP/$TRG_PKG -d $TFTP_PATH/boot/$TRG_NME

# Clean
. ./common/clean.sh
