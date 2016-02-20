==============================
 How to reproduce this recipe
==============================

1. Install miniconda (http://conda.pydata.org/miniconda.html)

2. Install conda-build::

     $ conda install conda-build

3. You can check each package builds individually with::

     $ conda build <package>

   The script ``build.sh`` will build the packages in the right order::

     $ ./build.sh
