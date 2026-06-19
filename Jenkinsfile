pipeline {
   agent any
   environment {
       TF_DIR = "dev"
       TF_CLI_ARGS = "-no-color"   // Ensures clean, aligned output
   }
   stages {
       stage('Checkout Code') {
           steps {
               git branch: 'develop', url: 'https://github.com/manojubale/Fullstack-deployment.git'
           }
       }
       stage('Terraform Init') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform init'
               }
           }
       }
       stage('Terraform Validate') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform validate'
               }
           }
       }
       stage('Terraform Plan') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform plan'
               }
           }
       }
       stage('Terraform Apply') {
           steps {
               dir("${TF_DIR}") {
                   sh 'terraform apply -auto-approve'
               }
           }
       }
   }
}
