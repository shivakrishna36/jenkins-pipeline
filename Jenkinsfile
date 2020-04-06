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
		 
		 stage ('building docker image') {
			 
					 
			 steps{
      				sh 'sudo docker build . -t shivakrishna1236/pipeline'
    			}
				 
			 
		 }
		 
		
	 	}
}

