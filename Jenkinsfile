pipeline {
	agent any
	tools {
        maven 'maven3.5.2'
        jdk 'jdk8'

    	}
	environment {
	    	
		registry = "shivakrishna1236/pipeline"
   		registryCredential = 'dockerhub'
		dockerImage = ''
	}
         stages {
                 stage('One') {
                 steps {
                     echo 'Hi, this is jenkins pipeline'
                 }
                 }
		 
		 stage ('Build') {
            		steps {
       				sh label: '', script: 'mvn clean package'
				echo 'build success'
           	 		}
		 	}

		 stage ('building docker image') {
			 
					 
			 steps{
      				sh 'docker build . -t shivakrishna1236/pipeline'
    			}
				 
			 
		 }
		 stage('Deploy Image') {
 		 	steps{
    				script {
      					docker.withRegistry( '', registryCredential ) {
        				dockerImage.push()
      				}
    				}
  			}
		}
		 stage('Remove Unused docker image') {
  			steps{
    				sh "docker rmi $registry:$BUILD_NUMBER"
  			}
		}
		
	 	}
}

