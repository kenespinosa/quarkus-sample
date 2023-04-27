pipeline {
  agent any
  
  stages {
    stage('build') {
      steps {
        cleanWs()
        echo "building application"
        sh "ls -al"
        sh "mvn clean install"
      }
    }
    stage('test') {
      steps {
        echo 'testing application'
      }
    }
    stage('deploy') {
      steps {
        echo 'deploying application'
      }
    }
  }
}

