#!/bin/bash

ccache_dir="$(pwd)/ccache"
proj_dir="$(cd android && pwd)"
sudo docker build -t ayufan_14.04:latest ayufan_14.04/.
sudo docker run --rm -ti -v "${ccache_dir}:/tmp/ccache" -v "${proj_dir}:/aosp" ayufan_14.04:latest /bin/bash
