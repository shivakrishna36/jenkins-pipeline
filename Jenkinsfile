pipeline {
    agent any
    tools { 
        maven 'maven3.6.3' 
        jdk 'jdk8' 
    }
	stages {
		stage ('Build') {
        		steps {
				def mvnHome = tool name: 'maven3.6.3', type: 'maven'
				bat "${mvnHome}/bin/mvn package"
            		}
       	 	}
	}
}
	 
