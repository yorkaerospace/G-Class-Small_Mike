#!/usr/bin/env python3

import argparse
import os
from shutil import copy
from subprocess import call

parser = argparse.ArgumentParser()
parser.add_argument("--format", "-f", help="File format to compile to (stl, off, amf, dxf, svg, png)")
parser.add_argument("--outDir", "-o", help="Store the files into a directory (will create if doensn't already exist")
parser.add_argument("--input", "-i", help="Input SCAD file to compile the components of")

args = parser.parse_args()

if args.outDir:
    path = str(args.outDir)
    if not os.path.isdir(args.outDir):
        os.mkdir(args.outDir)

copy(args.input, "tmp.scad")

with open("tmp.scad", "a") as scad_file:
    for line in lines:
        if "TOGGLE TAG" in line:
            words = line.split(":")
            print(words)
