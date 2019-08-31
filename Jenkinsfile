pipeline {
    agent any
    
	 environment {
        v_WORKSPACE = '/var/lib/jenkins/workspace/Database_repo'
         
	 }
	
	stages {
    		
		stage('Build') {
            steps {
                echo 'build phase'
				echo "$v_WORKSPACE"
		    	        sh "echo Hello from the shell"
                                sh "hostname"
                                sh "id"
		                sh "chmod 755 $v_WORKSPACE/build.sh"
		                sh ". $v_WORKSPACE/build.sh $v_WORKSPACE"
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
