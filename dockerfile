#FROM cloudreach/sceptre:latest
FROM python:3.8-slim
MAINTAINER     Noel Villador <noelvillador@gmail.com>

#RUN apk --no-cache add .build-deps gcc musl-dev libffi-dev make jq gawk && pip install troposphere awscli && pip install --upgrade boto3 pip && pip install cfn-lint --use-feature=2020-resolver && pip install networkx==2.1 sceptre-ssm-resolver
RUN apt-get update && apt-get install -y make jq gawk && pip install --upgrade troposphere awscli pip boto3 cfn-lint --use-feature=2020-resolver && pip install networkx==2.1 sceptre-ssm-resolver sceptre

WORKDIR /project
