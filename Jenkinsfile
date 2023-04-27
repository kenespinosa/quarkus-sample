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
        env.JAVA_HOME="${tool 'jdk-17.0.7'}"
        env.PATH="${env.JAVA_HOME}/bin:${env.PATH}"
        sh "ls /var/jenkins_home/workspace/my-pipeline_main"
        echo "${JAVA_HOME}"
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
