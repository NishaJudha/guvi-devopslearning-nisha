pipeline {
    agent any 

    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                url: 'https://github.com/NishaJudha/guvi-devopslearning-nisha.git'
            }
         }

        stage('Build') {
            steps {
                echo 'Building application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running unit tests...'
              
            }
        }      
    }
}
