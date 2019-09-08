pipeline {
    agent any
    
	 environment {
        v_WORKSPACE = '/var/lib/jenkins/workspace/Database_repo'
        v_File_Version = '1'
        SONAR_SCANNER_VERSION='4.0.0.1744'
        SONAR_SCANNER_HOME="/var/lib/jenkins/.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux"
         
	 }
	
	stages {
    		
		stage('Packaging Phase') {
            		steps {
                		echo 'Initiating Packaging..'
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
		
        	stage('Pushing Artifacts to Artifactory') {
            		steps {
                		echo "Package to be pushed is ${v_File_Version}"
				echo "Calling Curl to push.."
				sh "echo ${v_File_Version} > $v_WORKSPACE/arguments_temp"
				sh "/artifacts/database/upload.sh" 
				sh "rm -f $v_WORKSPACE/arguments_temp"
            		     }
        		}
       
		stage('Cleaning up the Locally stored Artifacts') {
            		steps {
                      		 echo 'Removing artifacts from local nodes'
				 sh "rm -f ${v_File_Version}"
				 echo "Removing temp directories created in packaging phase"
				 sh " rm -rf /artifacts/database/staging/*"
                   	      }
                }
		
		
		stage('Downloading Artifacts from Artifactory') {
            		steps {
                		echo "Package to be checkedout is ${v_File_Version}"
				echo "Calling Curl to download.."
				sh "echo ${v_File_Version} > $v_WORKSPACE/arguments_temp"
				sh "/artifacts/database/download.sh" 
				sh "rm -f $v_WORKSPACE/arguments_temp"
            		     }
        		}
		
		
		stage('Deploying database pacakge to Sandbox') {
            		steps {
                		echo "Package to be deployed is ${v_File_Version}"
                                sh "echo ${v_File_Version} > $v_WORKSPACE/arguments_temp"
                                sh "/artifacts/database/deploy.sh"
				sh "rm -f $v_WORKSPACE/arguments_temp"

			     }
        		}
		
		stage('Running SonarQube for Code Quality and Coverage') {
            		steps {
                		echo "Code Quality Checks"
				sh "/artifacts/database/sonar_scan.sh"
			     }
        		}
		
		
		
		stage('Running utPLSQL tests') {
            		steps {
                		echo "publishing coverage report for ${v_File_Version}"
			     }
        		}
		
		
    }
}
