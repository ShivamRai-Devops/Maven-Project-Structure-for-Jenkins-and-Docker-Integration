pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Use Maven to clean and build the project
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
                // Run tests using Maven
                sh 'mvn test'
            }
        }
        
        stage('Package') {
            steps {
                // Package the application (if applicable)
                echo 'Packaging the application...'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy the application (you can add deployment steps here)
                echo 'Deploying the application...'
            }
        }
    }
    
    post {
        always {
            // Cleanup or post-build actions
            echo 'Pipeline completed.'
        }
    }
}

