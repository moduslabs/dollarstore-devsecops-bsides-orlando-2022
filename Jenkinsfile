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
                stage ('Git Secrets Installation'){
                    steps {
                        echo 'Installing Amazon Git Secrets'
                        sh 'brew install git-secrets'
                    }
                }
                stage ('Horusec Installation'){
                    steps {
                        echo 'Horusec Installation'
                        sh 'curl -fsSL https://raw.githubusercontent.com/ZupIT/horusec/main/deployments/scripts/install.sh | bash -s latest'

                    }
                }
            }
        }
        stage('Execute') {
            stages {
                stage ('Execute CLOC scan'){
                    steps {
                        echo 'Executing CLOC'
                        sh 'cloc ./php'
                    }
                }
                stage ('Execute Checkov Scan'){
                    steps {
                        echo 'Executing Checkov..'
                        sh 'checkov -d . --bc-api-key $CHECKOV_API_KEY'
                    }
                }
                stage ('Execute PHPMetrics Scan'){
                    steps {
                        echo 'Executing PHPMetrics'
                        sh 'phpmetrics ./php --report-html=bsides-report.html'
                    }
                }
                stage ('Executing Tartufo Scan'){
                    steps {
                        echo 'Executing Tartufo'
                        sh 'tartufo scan-folder ./php'
                    }
                }
                stage ('Executing Git Secrets Scan'){
                    steps {
                        echo 'Executing AWS Git Secrets'
                        sh '''
                           git secrets --install -f
                           git secrets --register-aws
                           git secrets --scan
                           '''
                    }
                }
                stage ('Executing Horusec Scan'){
                    steps {
                        echo 'Executing Horusec'
                        sh 'horusec start -p="./" -e="true"'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying PHP App'
            }
        }
    }
}
