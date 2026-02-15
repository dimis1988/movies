pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'ruby:3.2.2-alpine'
                    reuseNode true
                }    
            }
            steps {
                sh '''
                    echo "lets see github logs..."
                    ls -la
                    ruby --version
                '''
            }
        }
        stage('Deploy') {
            agent {
                docker {
                    image 'ruby:3.2.2-alpine'
                    reuseNode true
                }    
            }
            steps {
                sh '''
                    echo "lets see github logs..."
                    ls -la
                    ruby --version
                    bundle install
                    sleep 10
                    ruby movies.rb
                '''
            }
        }
    }
}
