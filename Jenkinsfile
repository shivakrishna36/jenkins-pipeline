node{
    stage('SCM Checkout'){
        git 'https://github.com/shivakrishna36/jenkins-pipeline'
    }
    stage('JDK'){
    env.JAVA_HOME="${tool name: 'jdk8', type: 'jdk'}"
    env.PATH="${env.JAVA_HOME}/bin:${env.PATH}"
    bat 'java -version'
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'maven3.6.3', type: 'maven'
                bat "${mvnHome}/bin/mvn package"
    }
}

