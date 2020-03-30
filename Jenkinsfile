pipeline {
    agent any
   
	stages {
		stage('Build') {
           steps {
      		withMaven(maven : 'maven3.6.3') {
                bat 'mvn clean compile'
            }
      
   }
	}
}
}
