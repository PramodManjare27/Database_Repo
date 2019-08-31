pipeline {
    agent any
    
	 environment {
        WORKSPACE = '/var/lib/jenkins/workspace'
           }
	
	stages {
    
		
		stage('Build') {
            steps {
                echo 'build phase'
				echo "$WORKSPACE"
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
