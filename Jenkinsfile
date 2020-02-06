def buildNumber = env.BUILD_NUMBER as int
if (buildNumber > 1) milestone(buildNumber - 1)
milestone(buildNumber)

pipeline {
    agent { label 'jnlp-python3-slave' }

    options {
      ansiColor('xterm')
    }

    stages {

        stage("Install Virtualenv") {
            steps {
                sh """
                pip install virtualenv
                virtualenv --python=python3.7 --no-site-packages .
                """
            }
        }
        stage ('Unit Dependencies') {
            steps {
                sh """
                    source bin/activate
                    ./run-install
                    deactivate
                """
            }
        }
        stage ('Run build') {
            steps {
                sh """
                    source bin/activate
                    ./run-build
                    deactivate
                """
            }
        }
    }
}