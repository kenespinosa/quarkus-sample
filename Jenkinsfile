pipeline {
  
  agent any
  
  tools {
    maven "mvn-3.9.1"
  }
  
  options { skipStagesAfterUnstable() }
  
  stages {
    
    stage('check deploy') {
      steps {
        script {
            try {
                // Check for deploy keyword at the start of the commit message                
                sh """
                    #!/bin/bash
                    gitCommit=`git log -n 1 | awk 'NR==5' | awk '{\$1=\$1};1' | tr '[:upper:]' '[:lower:]'`
                    echo "GIT COMMIT: \$gitCommit"

                    SUB='deploy'
                    if [[ "\$gitCommit" == "\$SUB" ]]; then
                        echo "Keyword found. Will build and deploy."
                    else
                        echo "Keyword not found. Will not build and deploy."
                        exit 1
                    fi
                """
            } catch (err) {                                        
                unstable(message: "${STAGE_NAME} is unstable")
            }
        }
      }
    }
    
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
      }
    }
  }
      
  post {
    always {
      echo "Build completed."
    }
  }
}
