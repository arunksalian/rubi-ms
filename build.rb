
pipeline {
  
  agent none
  environment {
    JAVA_HOME = '/usr/lib/jvm/jdk-15.0.1'
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
