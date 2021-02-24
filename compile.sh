#!/bin/bash
yasm -g dwarf2 -f elf64 OperatorExperiment.asm 
ld -g -o run OperatorExperiment.o

