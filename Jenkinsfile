pipeline {
  agent any
  
  tools {
    maven "mvn-3.9.1"
  }
  
  stages {
    stage('build') {
      steps {
        echo "building application"
        sh "ls -al"
        sh "mvn clean package"
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

