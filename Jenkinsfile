pipeline{
    agent any 
    stages {
        stage('git checkout') {
            steps {
                  git branch: 'master', url: 'https://github.com/9948174728/Terraform_S3_Jenkins_AWS.git'
            }
        }
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
                withCredentials([aws(credentialsId: 'IAM-User-credentials', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform plan'
                }
            }
        }
        stage('terraform apply') {
            steps {
                withCredentials([aws(credentialsId: 'IAM-User-credentials', accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
