#!/bin/bash
#script for assembly/linking

if [ ! $# -eq 1 ]
then
    echo "Usage: ./asm64.sh <asm_source_file> (no extension)"
    exit 1
fi 

if [ ! -e "$1.asm" ]
then
    echo "Error: $1.asm not found"
    exit 2
fi 

nasm -f elf64 -o $1.o $1.asm
ld $1.o -o $1