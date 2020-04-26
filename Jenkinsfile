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
			 
			 System.setProperty("-Dorg.jenkinsci.plugins.durabletask.BourneShellScript.LAUNCH_DIAGNOSTICS","true")
			System.setProperty("org.jenkinsci.plugins.durabletask.BourneShellScript.FORCE_BINARY_WRAPPER","true")
			System.setProperty("org.jenkinsci.plugins.durabletask.BourneShellScript.FORCE_SHELL_WRAPPER","true")
			 
			sh label: '', script: 'java -version'
                     echo 'Hi, this is jenkins pipeline'
                 }
                 }
		  
		stage ('Build') {
            			steps {
                			sh label: '', script: 'mvn clean package test'
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
