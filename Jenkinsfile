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
                echo 'Installing PHPMetrics'
                sh '/usr/local/bin/brew install composer'
                sh '/usr/local/bin/composer global require \'phpmetrics/phpmetrics\'' 
            }
        }
        stage('Execute') {
            steps {
                echo 'Executing..'
                sh '/usr/local/bin/cloc ./php'
                echo 'Executing Checkov..'
                sh '/usr/local/bin/checkov -d . --bc-api-key $CHECKOV_API_KEY'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
