"""
Script to patch the SVD file from the vendor to make it compatible with svd2rust

Copyright 2024 Ashwin Narayan
Licensed under the MIT and Apache 2.0 licenses.

Patches the GD32F4xx SVD file to make it compatible with svd2rust.

Usage: python3 scripts/matchperipherals.py peripherals/ devices/gd32f130.yaml
"""
import sys
import argparse
import xml.etree.ElementTree as ET
from pathlib import Path

if __name__ == '__main__':
    # Argument parsing
    parser = argparse.ArgumentParser()

    parser.add_argument('svdpath', help='Path to the SVD file')

    args = parser.parse_args()

    # Load the SVD file
    tree = ET.parse(args.svdpath)

    # Iterate over the tree and replace text in <access> tags that
    # are "write" with "write-only"
    for access in tree.iter('access'):
        if access.text == 'write':
            access.text = 'write-only'

    # Iterate over the tree and replace text in <access> tags that
    # are "read" with "read-only"
    for access in tree.iter('access'):
        if access.text == 'read':
            access.text = 'read-only'

    # Iterate over all <name> tags
    for name in tree.iter('name'):
        # Check if the name contains "RTC_T"
        # if not none
        if name.text is not None:
            if "RTC_T\tamper" in name.text:
                print("Found RTC_T")
                # Replace the text with RTC_T_tamper
                name.text = "RTC_T_tamper"

    # Write the modified SVD file to a new file in the same directory
    # as the original file
    new_svdpath = Path(args.svdpath).with_name(f"patched_{Path(args.svdpath).name}")

    tree.write(new_svdpath)
