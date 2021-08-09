

node {
  stage('Checkout') {
    git 'https://github.com/arunksalian/account-ms.git'
  }
  
  stage ('Compile and package') {
    sh 'mvn clean package'
  }
  
  stage ('Docker build') {
    sh 'pwd'
    sh 'ls'
    sh 'docker build -t arunksalian/$version .' 
  }
}
