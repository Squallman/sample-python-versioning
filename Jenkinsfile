pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            additionalBuildArgs  '--build-arg WORKSPACE=${WORKSPACE}'
        }
    }
    stages {
        stage ('Unit Dependencies') {
            steps {
                sh """#!/bin/bash
                        source ${WORKSPACE}/penv/bin/activate
                        ./run-install.sh
                        deactivate
                    """
            }
        }
        stage ('Run build') {
            steps {
                sh """#!/bin/bash
                        source ${WORKSPACE}/penv/bin/activate
                        ./run-build.sh
                        deactivate
                    """
            }
        }

        stage ('Run ut') {
            steps {
                docker.image('mysql:5').withRun('-e "MYSQL_ROOT_PASSWORD=my-secret-pw" -p 3306:3306') { c ->
                    /* Wait until mysql service is up */
                    sh 'while ! mysqladmin ping -h0.0.0.0 --silent; do sleep 1; done'
                    /* Run some tests which require MySQL */
                    sh 'echo "Hello world!"'
                }
            }
        }
    }
}