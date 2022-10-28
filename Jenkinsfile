node {
    def app
    environment {
        DOCKER_HUB_CREDS = credentials("DOCKER_HUB_CREDS")
        DATABASE_URI = credentials("DATABASE_URI")
    }
    
    stage('Clone repository') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/NahidI11/QA-Project.git']]])
    }
    
    stage {
        stage('Setup') {
            steps {
                sh "bash setup.sh"
            }
        }
        stage('Test') {
            steps {
                sh "bash test.sh"
            }
        }
        stage('Build') {
            steps {
                sh "bash build.sh"
            }
        }
        stage('Push') {
            steps {
                sh "bash push.sh"
            }
        }
        stage('Deploy') {
            steps {
                sh "bash deploy.sh"
            }
        }
    }
    post {
        always {
            junit 'test_reports/*_junit_report.xml'
            cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'test_reports/*_coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false
        }
    }
}
