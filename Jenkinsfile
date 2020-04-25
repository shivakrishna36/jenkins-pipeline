pipeline {
	agent any
	tools {
        maven 'maven3.6.3'
        jdk 'jdk8'

    	}
	environment {
		
		PATH = "C:\\WINDOWS\\SYSTEM32"
	    	//scannerHome = tool 'sonarcube scanner'
		
		/*registry = "shivakrishna1236/pipeline"
   		registryCredential = 'dockerhub'
		dockerImage = ''*/
	}
         stages {
                 stage('One') {
                 steps {
			sh org.jenkinsci.plugins.durabletask.BourneShellScript.FORCE_SHELL_WRAPPER=true
                     echo 'Hi, this is jenkins pipeline'
                 }
                 }
		  
		stage ('Build') {
            			steps {
                			sh label: '', script: 'mvn clean package'
					echo 'build success'
           	 				}
		 			}
		/* stage ('building docker image') {
			 
					 
			 steps{
      				sh 'docker build . -t shivakrishna1236/pipeline'
    			}
				 
			 
		 }
		 stage('Deploy Image') {
 		 	steps{
    				withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerpwd', usernameVariable: 'dockername')]) {
    					sh "docker login -u ${env.dockername} -p ${env.dockerpwd}"
					sh 'docker push shivakrishna1236/pipeline:latest'
				}
  			}
		}*/
		
		
	 	}
}
