#!/bin/sh
set -eu
version=23.01
echo ::group::Downloading youtubeuploader $version for Linux
aria2c -x 16 $GITHUB_SERVER_URL/porjo/youtubeuploader/releases/download/$version/youtubeuploader_${version}_Linux_x86_64.tar.gz
mkdir youtubeuploader
tar -xf youtubeuploader_${version}_Linux_x86_64.tar.gz -C ./youtubeuploader youtubeuploader
rm youtubeuploader_${version}_Linux_x86_64.tar.gz
echo ::endgroup::
