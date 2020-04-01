#!/bin/bash

# Install required python modules
pip install -r requirements.txt

# Create Zip
zip -r lambda.zip *

# Deploy using AWS CLI

