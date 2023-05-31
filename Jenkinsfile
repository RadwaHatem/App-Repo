pipeline {
    agent {label 'aws'}
    stages {

        stage('Build'){
            
           steps {
                
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'MYPASS', usernameVariable: 'MYUSER')]){
                    sh """
                        docker build . -t radwahatem/simple-python-app
                        docker login -u ${MYUSER} -p ${MYPASS}
                        docker push radwahatem/simple-python-app
                
                        """
                }
            }
            
        }

        stage('Integrate Jenkins with EKS Cluster and Deploy App') {

            steps {

               

                  script {
                    
                    sh "kubectl delete -f deployment.yaml"
                    sh "kubectl apply -f deployment.yaml"
                    sh "kubectl apply -f app-svc.yaml"
                    

                  }
                
           }
        
        }
    }
}
