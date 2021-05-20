#!/bin/bash

ccache_dir="$(pwd)/ccache"
proj_dir="$(cd .. && pwd)"
# sudo docker run --rm -ti -v "${ccache_dir}:/tmp/ccache" -v "${proj_dir}:/aosp" kylemanna/aosp:6.0-marshmallow bash
# sudo docker run --rm -ti -v "${ccache_dir}:/tmp/ccache" -v "${proj_dir}:/aosp" kylemanna/aosp:latest bash
sudo docker run --rm -ti -v "${ccache_dir}:/tmp/ccache" -v "${proj_dir}:/aosp" ayufan_14.04:latest /bin/bash
