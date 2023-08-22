pipeline{
    agent any
    tools {
        terraform 'terra-02'
    }
     stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: '9948174728', url: 'https://github.com/9948174728/Terraform_S3_Jenkins_AWS.git'
            }
        }
        
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto approve'
            }
        }
    }
    }
