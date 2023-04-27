pipeline {
  agent any
  
  tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "mvn3.9.1"
        jdk "OpenJDK17"
    }
  
  stages {
    stage('build') {
      steps {
        echo "building application"
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
        sh "./mvnw quarkus:dev"
      }
    }
  }
}
