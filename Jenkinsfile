pipeline {
    agent { docker { image 'python:3.8.3' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('test') {
            steps {
                bat 'C:/Users/Krystsina_Bahdanava/Work/apache-jmeter-5.3/bin/jmeter.bat -n -t AutomatedTestingHW2.jmx -l testresults.xml'
            }
        }
    }
}