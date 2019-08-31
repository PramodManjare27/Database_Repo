pipeline {
    agent any
    
	 environment {
        WORKSPACE = '/var/lib/jenkins/workspace'
         RepoName= ExtractRepoName()  
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

def string ExtractRepoName()
{
return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/').last().split("\\.")[0]
}
