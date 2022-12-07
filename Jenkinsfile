pipeline { 
    agent any 
    stages { 
        
        stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t rutuja21/frontend:1.0 .'
                    sh 'docker build -t rutuja21/database:1.0 -f Database .'
                    sh 'docker build -t rutuja21/backend:1.0 -f Backendfile .'
                }
            }
        }
        stage('Push image to hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'rutuja21', variable: 'docker_cred')]) {
                        echo 'its logged in ....'
                        sh 'docker login -u rutuja21 -p ${docker_cred}'
                        
}
                        sh 'docker push rutuja21/frontend:1.0'
                        sh 'docker push rutuja21/database:1.0'
                        sh 'docker push rutuja21/backend:1.0'
                }
            }
        }
        
        
    }
}
