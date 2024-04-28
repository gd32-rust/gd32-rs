#!/usr/bin/env bash

# Copyright 2021 The gd32-rs authors.
#
# SPDX-License-Identifier: MIT OR Apache-2.0

# Copy GD32 SVD files and give them lower-case names.
cp vendor/GD32C10x.svd gd32c103.svd
cp vendor/GD32C11x.svd gd32c113.svd

cp vendor/GD32E10x.svd gd32e103.svd

cp vendor/GD32E230.svd gd32e230.svd
cp vendor/GD32E231.svd gd32e231.svd

cp vendor/GD32E50x_HD.svd gd32e503.svd
cp vendor/GD32E50x_CL.svd gd32e505.svd
cp vendor/GD32E50x_CL.svd gd32e507.svd
cp vendor/GD32E50x_CL.svd gd32e508.svd

cp vendor/GD32F1x0.svd gd32f130.svd
cp vendor/GD32F1x0.svd gd32f150.svd
cp vendor/GD32F1x0.svd gd32f170.svd
cp vendor/GD32F1x0.svd gd32f190.svd

cp vendor/GD32F30x_XD.svd gd32f303.svd
cp vendor/GD32F30x_CL.svd gd32f305.svd
cp vendor/GD32F30x_CL.svd gd32f307.svd

cp vendor/GD32F4xx.svd gd32f4xx.svd

unzip -juLL vendor/gd32f207_svd.zip '**.svd'
cp gd32f20x_cl.svd gd32f205.svd
cp gd32f20x_cl.svd gd32f207.svd
