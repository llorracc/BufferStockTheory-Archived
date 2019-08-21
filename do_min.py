# To generate all of the figures in the paper, execute this script using the command-line command
# ipython do_all.py

import os
import sys
sys.path.insert(0, os.path.abspath('../lib'))

# Find pathname to this file:
my_file_path = os.path.dirname(os.path.abspath("do_all.py"))
BufferStockTheory_py =  os.path.join(my_file_path,"Code/Python/BufferStockTheory.py")
exec(open(BufferStockTheory_py).read())
