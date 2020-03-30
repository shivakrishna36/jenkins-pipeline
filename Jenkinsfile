pipeline {
    agent any
    tools { 
        maven 'maven3.6.3' 
        jdk 'jdk8' 
    }
	stages {
		stage ("initialize") {
			steps {
				sh '''
				echo "PATH = ${PATH}"
				echo "M2_HOME = ${M2_HOME}"
				'''
				}
		stage ('Build') {
        		steps {
				sh "mvn clean package"
            		}
       	 	}
	}
}
	 
