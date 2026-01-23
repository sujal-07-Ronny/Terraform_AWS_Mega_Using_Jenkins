pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
        EMAIL_TO           = "sujalshaha974@gmail.com"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sujal-07-Ronny/Terraform_AWS_Mega_Using_Jenkins.git'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-credentials'
                ]]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-credentials'
                ]]) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Manual Approval') {
            steps {
                input message: 'Approve deployment to AWS?', ok: 'Deploy Now'
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-credentials'
                ]]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {

        success {
            emailext(
                subject: "✅ Jenkins SUCCESS: AWS Terraform Deployment",
                body: """
Terraform infrastructure deployed successfully.

Project: Terraform AWS Mega using Jenkins
Job: ${env.JOB_NAME}
Build: ${env.BUILD_NUMBER}

Docker Image:
ronny71011/mega:latest
""",
                to: "${EMAIL_TO}"
            )
        }

        failure {
            emailext(
                subject: "❌ Jenkins FAILED: AWS Terraform Deployment",
                body: """
Terraform deployment FAILED.

Project: Terraform AWS Mega using Jenkins
Job: ${env.JOB_NAME}
Build: ${env.BUILD_NUMBER}

Check Jenkins logs.
""",
                to: "${EMAIL_TO}"
            )
        }
    }
}
