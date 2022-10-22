pipeline{
    agent any 
    stages {
        // stage('git checkout') {
        //     steps {
        //           git branch: 'main', url: 'https://github.com/SudeepGowda55/Terraform_S3_Jenkins_AWS.git'
        //     }
        // }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage ('terraform format') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ('terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('terraform plan') {
           steps {
                sh 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}