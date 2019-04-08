pipeline {
    agent any
    stages {
		stage('Building image') {
			steps{
				script {
					docker.build + "hello:$BUILD_NUMBER"
				}
			}
		}
    }
}