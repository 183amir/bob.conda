==============================
 How to reproduce this recipe
==============================

1. Install miniconda (http://conda.pydata.org/miniconda.html)

2. Install conda-build::

     $ conda install conda-build

3. Some dependency conda packages which are not available in default conda channels can be installed in two ways:

3.1 [recommended] search for the package on http://anaconda.org and if it is available add that channel to your conda installation. For exmaple:
	 $ conda config --add channels jakirkham

3.2 Install them from their recipes. Make sure all recipes are available on your checkout::

     $ git submodule init
     $ git submodule update

4. You can check each package builds individually with::

     $ conda build <package>

   The script ``build.sh`` will build the packages in the right order::

     $ ./build.sh
