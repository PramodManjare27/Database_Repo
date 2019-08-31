pipeline {
    agent any
    
	stages {
    
		
		stage('Build') {
            steps {
                echo 'build phase'
				def workspace = pwd() 
				echo "$workspace"
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
