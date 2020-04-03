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
		
		 parallel {
		 stage('Sonarqube') {
    			environment {
        			scannerHome = tool 'sonarcube scanner'
    			}
			 steps {
				 bat 'mvn sonar:sonar'
			 }
}
		 
		 
		 stage ('Build') {
            		steps {
                		bat label: '', script: 'mvn clean package'
           	 }
		 }
		 }
		 
		 stage ('deploy to tomcat') {
			 steps {
				 deploy adapters: [tomcat9(credentialsId: '702722ae-4842-40e4-b6f4-6ada448a3cd6', path: '', url: 'http://localhost:8088/')], contextPath: 'webapp', onFailure: false, war: '**/*.war'
			 }
		 }
		 
		 stage('continue?') {
			 
			 
                     		steps {
					timeout(time: 10, unit: 'SECONDS') {
                    			input('Do you want to proceed?')
                 		}
			}

                 }
		 stage ('deploy to tomcat2') {
			 steps {
				 deploy adapters: [tomcat8(credentialsId: '702722ae-4842-40e4-b6f4-6ada448a3cd6', path: '', url: 'http://localhost:8089/')], contextPath: 'webapp', onFailure: false, war: '**/*.war'
			 }
		 }
		 
	 }
}

