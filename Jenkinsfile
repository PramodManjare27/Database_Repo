pipeline {
    agent any
    options {
        timestamps()
    }
    environment {
        IMAGE = "pramodmanjare27/oracle_client_linux"
        REGISTRY = "https://registry.hub.docker.com"
    }
    stages {
        
        stage('build') {
            steps {
                script {
                    image = docker.build("${IMAGE}")
                    println "Newly generated image, " + image.id
                }
            }
        }
        stage('test') {
            steps {
                script {
                    // https://hub.docker.com/r/tutum/hello-world/
                    def container = image.run('-p 8055')
                    def contport = container.port(8055)
                    println image.id + " container is running at host port, " + contport
                        currentBuild.result = "FAILURE"
                   }
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
