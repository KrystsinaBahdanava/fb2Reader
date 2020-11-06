pipeline {
    agent { docker { image 'python:3.5.1' } }
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
