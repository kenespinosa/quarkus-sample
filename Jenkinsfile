pipeline {
  agent any
  
  tools {
    maven "mvn-3.9.1"
  }
  
  stages {
    stage('build') {
      steps {
        echo "building application"
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
    
    post {
      always {
        echo "Build completed."
      }
    }
  }
}
