pipeline {
    agent any
    tools { 
        maven 'maven3.6.3' 
        jdk 'jdk8' 
    }
	stages {
		stage('Build') {
           steps {
      		dir ('myproject') {
            	
            	sh 'mvn clean install test'
      		}	
      	} 
      
   }
	}
}
	 
