#!/usr/bin/env bash

# Setup the path to your conda installation here
# You don't need to pre-install anything on your environment
CONDA=conda

# install from other channels
${CONDA} install anaconda-client anaconda-build
${CONDA} config --add channels jakirkham
# ${CONDA} install -c http://conda.anaconda.org/jakirkham pkg-config 

for package in libblitz
do
	${CONDA} build $package
done

for package in bob.extension bob.blitz bob.core bob.math
do
	for pythonv in 2.7 3.4 3.5
	do
		${CONDA} build --python=$pythonv $package
	done
done
