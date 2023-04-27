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
            # Verification purpose to check the repository that triggered the pipeline
            echo "Namespace: ${env.gitlabSourceNamespace}"
            echo "Microservice: ${env.gitlabSourceRepoName}"
            echo "Branch: ${env.gitlabBranch}"
            echo "Git Author: ${env.gitlabUserName}"

            # Check Java, Maven, and Docker version
            java --version
            mvn --version
        """
      }
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
      }
    }
  }
      
  post {
    always {
      echo "Build completed."
    }
  }
}
