pipeline {
    agent any
    
	 environment {
        v_WORKSPACE = '/var/lib/jenkins/workspace/Database_repo'
        v_File_Version = '1'
         
	 }
	
	stages {
    		
		stage('Build') {
            steps {
                echo 'build phase'
				echo "$v_WORKSPACE"
		    	        sh "echo $v_WORKSPACE > $v_WORKSPACE/arguments_temp"
		                sh "echo Hello from the shell"
                                sh "hostname"
                                sh "id"
		                sh "chmod 755 $v_WORKSPACE/build.sh"
		                sh ". $v_WORKSPACE/build.sh $v_WORKSPACE"
	    		script {
          // trim removes leading and trailing whitespace from the string
          				v_File_Version = readFile("$v_WORKSPACE/arguments_temp").trim()
        				}
        			echo "${v_File_Version}" 
		                sh "rm -f $v_WORKSPACE/arguments_temp"
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
