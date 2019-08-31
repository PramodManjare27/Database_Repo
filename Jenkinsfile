pipeline {
    agent any
    
	 environment {
        WORKSPACE = '/var/lib/jenkins/workspace/Database_repo'
         
	 }
	
	stages {
    		
		stage('Build') {
            steps {
                echo 'build phase'
				echo "$WORKSPACE"
		    	        sh "echo Hello from the shell"
                                sh "hostname"
                                sh "id"
		                sh "chmod 755 $WORKSPACE/build.sh"
		                sh ". $WORKSPACE/build.sh"
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
