sudo docker run -v "$PWD":/home/jovyan/work -it --rm econark/econ-ark-notebook:test4 bash -c "export TERM=dumb; ipython do_all.py"
