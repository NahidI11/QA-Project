pipeline {
    agent any
    stage('Clone repository') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/NahidI11/QA-Project.git']]])
    }
    
    stage('Setup docker') {

         sh "bash setup.sh"
    }

    stage('Build image') {
        
         sh "bash build.sh"
    }  

    stage('Run container') {
        
        sh "bash run.sh"
    }
}
