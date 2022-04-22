pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/choijunil/cicdtes.git', branch: 'master'
      }
    }
    stage('docker build and push') {
      steps {
        sh '''
        sudo docker build -t dorlvkdnj/testshop:newnewmain .
        sudo docker push dorlvkdnj/testshop:newnewmain 
        '''
      }
    }
    stage('deploy k8s') {
      steps {
        sh '''
        sudo kauth
	sudo kubectl set image deployment deploy-main ctn-main=dorlvkdnj/testshop:newnewmain
        '''
      }
    }
  }
}

