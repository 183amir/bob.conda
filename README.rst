==============================
 How to reproduce this recipe
==============================

1. Install miniconda (http://conda.pydata.org/miniconda.html)

2. Install conda-build::

     $ conda install conda-build

3. Make sure all recipes are available on your checkout::

     $ git submodule init
     $ git submodule update

4. You can check each package builds individually with::

     $ conda build <package>

   The script ``build.sh`` will build the packages in the right order::

     $ ./build.sh
