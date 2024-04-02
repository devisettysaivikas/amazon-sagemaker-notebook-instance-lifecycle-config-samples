#!/bin/bash

set -e

# OVERVIEW
# This script executes an existing Notebook file on the instance during start using nbconvert(https://github.com/jupyter/nbconvert)

# PARAMETERS

ENVIRONMENT=JupyterSystemEnv
NOTEBOOK_FILE=/home/ec2-user/SageMaker/MyNotebook.ipynb

source /home/ec2-user/anaconda3/bin/activate "$ENVIRONMENT"

jupyter nbconvert --ExecutePreprocessor.kernel_name=python --to notebook --execute "$NOTEBOOK_FILE"

source /home/ec2-user/anaconda3/bin/deactivate
