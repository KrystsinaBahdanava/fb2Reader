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
                    sh 'C:/Users/Krystsina_Bahdanava/Work/apache-jmeter-5.3/bin/jmeter.bat -n -t C:/Users/Krystsina_Bahdanava/Work/apache-jmeter-5.3/bin/AutomatedTestingHW2.jmx -l C:/Users/Krystsina_Bahdanava/Work/apache-jmeter-5.3/bin/testresults.xml'

            }
        }
    }
}
