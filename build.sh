#!/usr/bin/env bash

# Setup the path to your conda installation here
# You don't need to pre-install anything on your environment
CONDA=conda

${CONDA} build blitz++
${CONDA} build pkg-config
${CONDA} build bob.extension
${CONDA} build bob.blitz
${CONDA} build bob.core
${CONDA} build bob.math
