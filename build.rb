
pipeline {
  agent {
        docker { image 'youmoni/jdk11' }
  }
  stages {
     stage('Checkout') {
       steps {
         git 'https://github.com/arunksalian/account-ms.git'
       }
     }

    stage ('Compile and package') {
      steps {
        sh '/media/hd1/Xtras/apache-maven-3.8.1/bin/mvn clean package'
      }
    }
    
    stage ('Docker build') {
      steps {
        sh 'docker build -t arunksalian/account-ms:$version'
      }
    }
  }
}
