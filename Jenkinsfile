pipeline {
    agent any

    environment {
       CHECKOV_API_KEY = credentials('checkov-api-key')
       PATH = "~/.composer/vendor/bin:/usr/local/bin:${env.PATH}"
    }

    stages {
        stage('Install') {
            steps {
                echo 'Installing CLOC'
                sh 'brew install cloc'
                echo 'Installing Checkov'
                sh 'brew install checkov'
                echo 'Installing PHPMetrics'
                sh 'brew install composer'
                sh 'composer global require \'phpmetrics/phpmetrics\'' 
                echo 'Installing Tartufo'
                sh 'pip3 install tartufo'
            }
        }
        stage('Execute') {
            steps {
                echo 'Executing CLOC'
                sh 'cloc ./php'
                echo 'Executing Checkov..'
                sh 'checkov -d . --bc-api-key $CHECKOV_API_KEY'
                echo 'Executing PHPMetrics'
                sh 'phpmetrics ./php --report-html=bsides-report.html'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
