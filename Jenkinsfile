

node {
  stage('Checkout') {
    git 'https://github.com/arunksalian/account-ms.git'
  }
  
  stage ('Compile and package') {
    sh 'mvn clean package'
  }
  
  stage ('Docker build') {
    sh 'docker build -t arunksalian/account-ms:0.0.6-SNAPSHOT' .
  }
}
