
pipeline {
  
  agent { docker { image 'maven:3.3.3' } }
  environment {
    JAVA_HOME = '/usr/lib/jvm/java-1.11.0-openjdk-amd64'
  }
    
  stages {
     stage('Checkout') {
       steps {
         git 'https://github.com/arunksalian/account-ms.git'
       }
     }

    stage ('Compile and package') {
      steps {
        sh 'mvn clean package'
      }
    }
    
    stage ('Docker build') {
      steps {
        sh 'docker build -t arunksalian/account-ms:$version'
      }
    }
  }
}
