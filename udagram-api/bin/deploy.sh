eb init udagram-api --platform node.js --region $AWS_DEFAULT_REGION
eb use udagram-api-dev 
cp -rf ./.elasticbeanstalk www
cd www
eb setenv POSTGRES_HOST=$POSTGRES_HOST PORT_DB=$PORT_DB PORT=$PORT POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME RDS_DIALECT=$RDS_DIALECT POSTGRES_DB=$POSTGRES_DB AWS_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET URL=$URL AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY JWT_SECRET=$JWT_SECRET
eb deploy udagram-api-dev