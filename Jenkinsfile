pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'App'
            }
        }
        stage('test') {
            steps {
                sh 'python main_test.py dev'
            }
        }
    }
}
