pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                brew install cloc
                cloc ./php
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
