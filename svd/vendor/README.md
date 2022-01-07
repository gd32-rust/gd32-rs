# GD32 SVD files from GigaDevice

Original files fetched from [gd32mcu.com], extracted from ADD-ON `.pack` files.

[gd32mcu.com]:http://www.gd32mcu.com/en/download/

## `GD32F30x` Series

For the `GD32F30x` series, the add-on file is not properly named on the website.
Search for `GD32F30x`, and look for a file that has the `.pack` file in the
description.

Devices are described in `GigaDevice.GD32F30x_DFP.pdsc`. This file
describes the flash/memory layout for each device, as well as the corresponding
SVD file, which can be one of the 3 SVD files: `GD32F30x_{CL,HD,XD}.svd`.
