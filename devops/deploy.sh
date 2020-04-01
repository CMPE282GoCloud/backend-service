#!/bin/bash

# Install required python modules
pip install -r requirements.txt

# Create Zip
zip -r lambda.zip *

# Deploy using AWS CLI
aws lambda --region us-east-1 create-function --function-name backend-lambda --runtime python3.8 --zip-file fileb://lambda.zip --role arn:aws:iam::104349172281:role/lambda-execution-role --h
andler lambda_function.lambda_handler