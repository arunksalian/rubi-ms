
pipeline {
  agent {
        docker { image 'node:14-alpine' }
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
