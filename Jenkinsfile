pipeline {
  agent any
  
  tools {
    maven "mvn-3.9.1"
  }
   
  stages {
    
    stage('build') {
      steps {
        sh """
            #!/bin/bash
            # Check Java, Maven, and Docker version
            java --version
            mvn --version
        """
        
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
      }
    }
  }
      
  post {
    always {
      echo "Build completed."      
    }
  }
}
