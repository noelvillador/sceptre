FROM cloudreach/sceptre:latest
MAINTAINER 	Noel Villador <noelvillador@gmail.com>

RUN apk add make jq && pip install troposphere awscli && pip install --upgrade boto3
