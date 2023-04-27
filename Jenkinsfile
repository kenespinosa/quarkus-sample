pipeline {
  agent any
  
  tools {
    // Install the Maven version configured as "M3" and add it to the path.
    maven "maven-3.8.6"
  }
  
  stages {
    stage('build') {
      steps {
        cleanWs()
        echo "building application"
        bat "dir"
        bat "mvn clean install"
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

