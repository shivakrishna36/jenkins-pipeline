pipeline {
	agent any
	tools {
        maven 'Maven3.6.3'
        jdk 'jdk8'
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
		 stage('Build') {
                 steps {
                    echo 'build success'
                 }
                 }
		 stage ('Build') {
            		steps {
                		sh 'mvn -Dmaven.test.failure.ignore=true install' 
           	 }
		 }
	 }
}

