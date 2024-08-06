#!/usr/bin/env bash

if [ "$1" == "" ]; then
  dataset="/slam/runtime/heightmap_datasets/shaking_test/2024-06-04_12-32-28__exposure_auto"
else
  dataset="$1"
fi

pic_dir="$dataset/color/data"

./demo_superpoint.py \
	--img_glob='*.jpg' \
	--H=480 --W=848 \
	--display_scale=2 \
	--show_extra \
	--write \
	--write_dir="$dataset/superpoint" \
	--cuda "$pic_dir"


