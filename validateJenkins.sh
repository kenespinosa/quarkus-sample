#!/bin/bash

JENKINS_HOST=http://localhost
PORT=8081
JENKINS_USER=jenkins-admin
JENKINS_PASSWORD=admin

JENKINS_CRUMB="$(curl -s --request GET http://localhost:8081/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\) --user 'jenkins-admin:admin')"

curl -X POST "${JENKINS_HOST}:${PORT}/pipeline-model-converter/validate" \
--header "${JENKINS_CRUMB}" \
--user "${JENKINS_USER}:${JENKINS_PASSWORD}" \
--form "jenkinsfile=<Jenkinsfile" 
