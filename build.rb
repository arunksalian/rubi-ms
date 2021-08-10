
pipeline {
  agent {
    docker {image : 'youmoni/jdk11'}
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
  }
}
