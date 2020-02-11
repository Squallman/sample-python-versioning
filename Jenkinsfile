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
                        cat ${WORKSPACE}/my.cfg
                    """
            }
        }
    }
}