pipeline {
	agent any
	steps {	  
        stage ('build'){
bat "mvn clean test -Dsuite=SMOKE_TEST -Denvironment=QA"
        }
}
}

