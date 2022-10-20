pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                # MacOS
                sh 'brew install cloc'
                sh 'cloc .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
