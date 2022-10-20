pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                echo 'Installing CLOC'
                sh '/usr/local/bin/brew install cloc'
                echo 'Installing Checkov'
                sh '/usr/local/bin/brew install checkov'
            }
        }
        stage('Execute') {
            steps {
                echo 'Executing..'
                sh '/usr/local/bin/cloc ./php'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
