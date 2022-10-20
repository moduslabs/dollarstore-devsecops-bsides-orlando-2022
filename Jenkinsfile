pipeline {
    agent any

    environment {
       CHECKOV_API_KEY = credentials('checkov-api-key')
    }

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
                echo 'Executing Checkov..'
                sh 'checkov -d . --bc-api-key $CHECKOV_API_KEY'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}