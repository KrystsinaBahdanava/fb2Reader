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
                dir ('C:/Users/Krystsina_Bahdanava/PycharmProjects/fb2Reader') {
                    sh 'C:/Users/Krystsina_Bahdanava/Work/apache-jmeter-5.3/bin/jmeter.bat -n -t ./AutomatedTestingHW2.jmx -l ./testresults.xml'
                }
            }
        }
    }
}
