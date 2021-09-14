#!/usr/bin/groovy

pipeline {
    agent any

    options {
        disableConcurrentBuilds()
    }

    environment{
        SSH_KEY = credentials('sshkey')
        MYSQL_ROOT_PASS = credentials('mysql_root_pass')
        MYSQL_USER_PASS = credentials('mysql_user_pass')

    }
    
	

    stages {

        stage('Init'){
            steps {
                sh './bash-script-login.sh'
            }
        }
		


	}
}