pipeline {
    agent any
    tools { 
        maven 'maven3.6.3' 
        jdk 'jdk8' 
    }
	stage ('Build') {
        	steps {
			bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
}
	 
