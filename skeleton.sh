#!/usr/bin/env bash
set -x
# bob.extension bob.blitz bob.core bob.math bob.io.basebob.io.matlab bob.io.audio bob.sp bob.ap bob.measure bob.db.base bob.io.image bob.io.video bob.ip.base bob.ip.color bob.ip.draw bob.ip.gabor bob.learn.activation bob.learn.libsvm bob.learn.linear 
for package in bob.learn.mlp bob.learn.em bob.learn.boosting bob.db.verification.utils bob.db.iris bob.db.wine bob.db.mnist bob.db.atnt bob.ip.facedetect bob.ip.optflow.hornschunck bob.ip.optflow.liu
do
	conda skeleton pypi $package
	source activate _build
	while true; do
		read -p "Install the requirements in the _build environment. " cmd
		eval $cmd
		conda skeleton pypi $package
		read -p "Do you wish to install more requirements?" -n 1 yn
		case $yn in
		    [Yy]* ) :;;
		    [Nn]* ) break;;
		    * ) echo "Please answer yes or no.";;
		esac
	done
	source deactivate

	# patch the meta.yaml file
	python patch.py $package/meta.yaml $package
  gedit $package/meta.yaml &
	while true; do
    conda build $package
		read -p "Do you wish to build the package again?" -n 1 yn
		case $yn in
		    [Yy]* ) :;;
		    [Nn]* ) break;;
		    * ) echo "Please answer yes or no.";;
		esac
	done
done
