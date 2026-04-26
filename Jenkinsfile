pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'ruby:3.2.2'
                    reuseNote true
                }
            }
            steps {
                sh '''
                    ls -la
                    ruby --version
                    bundler --version
                    bundle install
                    ls -la
                '''
            }
        }
    }
}
