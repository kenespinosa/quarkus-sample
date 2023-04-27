pipeline {
  agent any
  
  tools {
    // Install the Maven version configured as "M3" and add it to the path.
    maven "mvn3.9.1"
    jdk "jdk-17.0.7"
  }
  
  stages {
    stage('build') {
      steps {
        cleanWs()
        echo "JAVA_HOME: ${JAVA_HOME}"
        echo "PATH: ${PATH}"
        echo "building application"
        sh "java --version"
        sh "mvn -DskipTests clean package"
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
