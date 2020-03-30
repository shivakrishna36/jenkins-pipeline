pipeline {
    agent any
   
	stages {
		stage('Build') {
           steps {
      		dir ('myproject') {
            	
            	sh 'mvn clean package'
      		}	
      	} 
      
   }
	}
}
	 
