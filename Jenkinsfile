pipeline {
	agent any
	tools {
        maven 'maven3.6.3'
        jdk 'jdk8'
    	}
	environment {
	    	PATH = "C:\\WINDOWS\\SYSTEM32"
	    	scannerHome = tool 'sonarcube scanner'
		tool name: 'docker', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
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
		 stage ('parallel') {
			 
		 		parallel {
					stage ('Build') {
            					steps {
                					bat label: '', script: 'mvn clean package'
							echo 'build success'
           	 				}
		 			}
		 			stage('Sonarqube') {
			 			steps {
							bat 'mvn sonar:sonar'
							echo 'sonarqube success'
			 			}
					}
		 
		 
		 			
		 		}
		 	
		 }
		
		 stage ('building image') {
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
        			bat "docker rmi $registry:$BUILD_NUMBER"
     				}
    			}
	 	}
}

