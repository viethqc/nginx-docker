pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'
				echo 'Pulling... ' + env.GIT_BRANCH
				echo 'commit: ' + env.GIT_COMMIT

                script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push()
                }
            }
        }
    }
} 