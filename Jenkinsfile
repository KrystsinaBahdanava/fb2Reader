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
                dir('jmeter') {
                    sh "./mvnw clean install -DskipTests"
                    sh 'nohup ./mvnw spring-boot:run -Dserver.port=8989 &'
                    sh "while ! httping -qc1
                      http://localhost:8080 ; do sleep 1 ; done"

                    sh "jmeter -Jjmeter.save.saveservice.output_format=xml
                      -n -t AutomatedTestingHW2.jmx
                        -l testresults.xml"
                    step([$class: 'ArtifactArchiver', artifacts: 'JMeter.jtl'])
                    sh "pid=\$(lsof -i:8989 -t); kill -TERM \$pid || kill -KILL \$pid"
                }
            }
        }
    }
}
