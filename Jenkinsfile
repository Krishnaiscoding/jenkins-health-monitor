pipeline{
    agent any

    stages {
        stage('Checkout') {
            steps{
                echo 'Code Pulled from GitHub'
            }
        }
        stage('Generate Health Report') {
            steps {
                sh '''
                chmod +x health_check.sh
                mkdir -p reports
                ./health_check.sh > reports/health-report.txt
                '''
            }
        }
        stage('Display Report') {
            steps {
                sh 'cat reports/health-report.txt'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'reports/*.txt'
        }
    }
}