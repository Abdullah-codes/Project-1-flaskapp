#!/usr/bin/groovy

pipeline {
    agent any

    options {
        disableConcurrentBuilds()
    }

    environment{
        SSH_KEY = credentials('sshkey')

    }
    
	

    stages {

        stage('Terraform Init'){
            steps {
                sh './bash-script-login.sh'
            }
        }
		


	}
}