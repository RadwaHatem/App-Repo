pipeline {
    agent {label 'aws'}
    stages {

        stage('Build'){
            
           steps {
                
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'MYPASS', usernameVariable: 'MYUSER')]){
                    sh """
                        docker build . -t radwahatem/nodejs:v1.0
                        docker login -u ${MYUSER} --password-stdin ${MYPASS}
                        docker push radwahatem/SimplePythonApp
                
                        """
                }
            }
            
        }

        stage('Integrate Jenkins with EKS Cluster and Deploy App') {

            steps {

               

                  script {

                    sh "kubectl apply -f deployment.yaml"
                    sh "kubectl apply -f app-svc.yaml"

                  }
                
           }
        
        }
    }
}
