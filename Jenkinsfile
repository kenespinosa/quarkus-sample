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
        sh "mvn -v"
        echo "JAVA_HOME: ${JAVA_HOME}"
        echo "building application"
        sh "java --version"
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

