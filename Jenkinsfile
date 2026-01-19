pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
    }

    stages {

        stage('Checkout from SCM') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/krishnav7090/terraform.sam.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                Terraform --version
                Terraform init
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                Terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Approve Terraform Apply?', ok: 'Apply'
                sh '''
                Terraform apply -auto-approve tfplan
                '''
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline executed successfully.'
        }
        failure {
            echo 'Terraform pipeline failed.'
        }
    }
}
