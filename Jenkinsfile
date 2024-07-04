pipeline {
    agent any

    environment {
        // Define the action variable
        action = "apply" // Change this value as needed, e.g., "apply" or "destroy"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage('terraform init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Action') {
            steps {
                script {
                    echo "Terraform action is --> ${action}"
                    sh "terraform ${action} --auto-approve"
                }
            }
        }
    }
}
