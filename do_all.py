# To generate all of the figures in the paper, execute this script using the command-line command
# ipython do_all.py

import subprocess
import glob

def run_remark():
    """ check for python files in Code/Python directory
        this will print out an error if no .py available
        Jupytext should be used before running this file.
    """
    filename = glob.glob("Code/Python/*.py")
    if len(filename) == 0:
        raise ValueError(
            "Python file not found, make sure Jupytext synced file of the notebook is available in the Code/Python directory"
        )
    else:
        filename = filename[0]
    directory = '/'.join(filename.split('/')[:-1])
    python_file = filename.split('/')[-1]
    subprocess.run([f"cd {directory}; ipython {python_file}"], shell=True)

run_remark()
