#!/usr/bin/env ipython

# To generate all of the figures in the paper, execute this script using the command-line command
# ipython do_all.py

import os
import sys
sys.path.insert(0, os.path.abspath('../lib'))

# Find pathname to this file:
my_file_path = os.path.dirname(os.path.abspath("do_all.py"))

# Change working directory to the one that has the code 
os.chdir(my_file_path + '/Code/Python')

# Run BufferStockTheory.py
import BufferStockTheory

