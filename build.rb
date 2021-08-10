
pipeline {
  stages {
     stage('Checkout') {
      git 'https://github.com/arunksalian/account-ms.git'
     }

    stage ('Compile and package') {
      sh 'mvn clean package'
    }
  }
}
