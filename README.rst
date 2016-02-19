==============================
 How to reproduce this recipe
==============================

1. Install miniconda (http://conda.pydata.org/miniconda.html)


2. Install numpy + scipy without MKL support (Intel MKL is not distributed with
   Conda, so we cannot compile ``bob.math`` against numpy+mkl)::

   $ conda install nomkl numpy scipy


3. You can check each package builds individually with::

   $ conda build <package>
