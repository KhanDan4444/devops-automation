pipeline {
    agent any

    tools {
        // Define Maven tool with version 3.6.3
        maven "mvn 3.6.3"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git repository (replace 'your-git-repository-url' with your actual Git repository URL)
checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'git@github.com:KhanDan4444/devops-automation.git', credentialsId: 'jj']]])
            }
        }

        stage('Build') {
            steps {
                // Build using Maven
                script {
                    def mavenHome = tool 'Maven 3.6.3'
                    sh "${mavenHome}/bin/mvn clean install"
                }
            }
        }

        // Add more stages as needed (e.g., test, deploy)
    }

    post {
        success {
            // Actions to be taken if the build is successful
            echo 'Build successful!'

            // Add additional post-build actions here
        }
        failure {
            // Actions to be taken if the build fails
            echo 'Build failed!'

            // Add additional post-failure actions here
        }
    }
}
