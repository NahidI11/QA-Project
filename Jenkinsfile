node {
    def app

    stage('Clone repository') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/NahidI11/QA-Project.git']]])
    }
    
    stage('cleanup') {
                script { 
                    def imageName = "myapp"
                    env.imageName = "${imageName}"
                    def oldImageID = sh( 
                                            script: 'sudo docker images -qf reference=\${imageName}',
                                            returnStdout: true
                                        )

                    echo "Image Name: " + "${imageName}"
                    echo "Old Image: ${oldImageID}"

                    if ( "${oldImageID}" != '' ) {
                        echo "Deleting image id: ${oldImageID}..."
                         sh "docker stop ${oldImageID}"
                         sh "docker rm ${oldImageID}"
                         sh "docker rmi -f ${oldImageID}"
                    } else {
                        echo "No image to delete..."
                        } 
                    }  
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
