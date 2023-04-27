pipeline {
  agent any
  
  tools {
    // Install the Maven version configured as "M3" and add it to the path.
    maven "mvn3.9.1"
  }
  
  stages {
    stage('build') {
      steps {
        cleanWs()
        sh "ls /var/jenkins_home/workspace/my-pipeline_main"
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
