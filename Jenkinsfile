pipeline {
	agent any
	tools {
        maven 'maven3.6.3'
        jdk 'jdk8'
    	}
	environment {
	    PATH = "C:\\WINDOWS\\SYSTEM32"
	}
         stages {
                 stage('One') {
                 steps {
                     echo 'Hi, this is jenkins pipeline'
                 }
                 }
                 stage('Two') {
                 steps {
                    input('Do you want to proceed?')
                 }
                 }
		 
		 stage('Sonarqube') {
    			environment {
        			scannerHome = tool 'sonarcube scanner'
    			}
    				steps {
        				withSonarQubeEnv('sonarqube') {
            				bat label: '', script: 'mvn clean sonar:sonar'
        		}
       					timeout(time: 10, unit: 'MINUTES') {
            				waitForQualityGate abortPipeline: true
        	}
    	}
}
		 
		 
		 stage ('Build') {
            		steps {
                		bat label: '', script: 'mvn clean package'
           	 }
		 }
	 }
}

