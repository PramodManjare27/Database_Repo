pipeline {
    agent any
    
	stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PramodManjare27/Database_Repo.git']]])
            }
        }
		
		stage('Build') {
            steps {
                echo 'build phase'
            }
        }
		
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
}

