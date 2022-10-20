pipeline {
    agent any

    environment {
       CHECKOV_API_KEY = credentials('checkov-api-key')
       PATH = "~/.composer/vendor/bin:/usr/local/bin:${env.PATH}"
    }

    stages {
        stage('Install') {
            stages {
                stage ('CLOC Installation'){
                    steps {
                        echo 'Installing CLOC'
                        sh 'brew install cloc'
                    }
                }
                stage ('Checkov Installation'){
                    steps {
                        echo 'Installing Checkov'
                        sh 'brew install checkov'
                    }
                }
                stage ('PHPMetrics Installation'){
                    steps {
                        echo 'Installing PHPMetrics'
                        sh 'brew install composer'
                        sh 'composer global require \'phpmetrics/phpmetrics\'' 
                    }
                }
                stage ('Tartufo Installation'){
                    steps {
                        echo 'Installing Tartufo'
                        sh 'pip3 install tartufo'
                    }
                }
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
                echo 'Executing Tartufo'
                sh 'tartufo scan-folder ./php'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying PHP App'
            }
        }
    }
}
