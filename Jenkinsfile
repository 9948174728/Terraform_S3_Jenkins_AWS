pipeline{
    agent any 
    environment {
        AWS_DEFAULT_REGION="us-east-1"
    }
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
                withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
                    sh 'terraform plan'
                }
            }
        }
        stage('terraform apply') {
            steps {
                withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}