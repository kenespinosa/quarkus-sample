#!/bin/bash

JENKINS_HOST=http://localhost
PORT=8081
JENKINS_USER=jenkins-admin
JENKINS_PASSWORD=admin

getCrumbs() {
    echo "Getting Jenkins Crumb..."
    JENKINS_CRUMB=$(curl -s --request GET ${JENKINS_HOST}:${PORT}/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\) --user 'jenkins-admin:admin')
}

if [ -z "$JENKINS_CRUMB" ]
then
    getCrumbs
fi

echo "${JENKINS_CRUMB}"
echo "Validating Jenkinsfile..."


curl -X POST "${JENKINS_HOST}:${PORT}/pipeline-model-converter/validate" \
--header "${JENKINS_CRUMB}" \
--user "${JENKINS_USER}:${JENKINS_PASSWORD}" \
--form "jenkinsfile=<Jenkinsfile" 
