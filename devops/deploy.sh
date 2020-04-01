#!/bin/bash

# Install required python modules
pip install -r requirements.txt

# Create Zip
zip -r lambda.zip *

# Deploy using AWS CLI
aws lambda --region us-east-1 update-function-code --function-name backend-lambda --zip-file fileb://lambda.zip