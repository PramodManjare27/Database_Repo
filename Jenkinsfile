pipeline {
    agent any
    
	 environment {
        WORKSPACE = '/var/lib/jenkins/workspace'
         RepoName = scm.getUserRemoteConfigs()[0].getUrl().tokenize('/').last().split("\\.")[0]
	 }
	
	stages {
    		
		stage('Build') {
            steps {
                echo 'build phase'
				echo "$WORKSPACE"
		    	        echo "$RepoName"
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
