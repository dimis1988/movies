pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'ruby:3.2.2'
                    reuseNode true
                }    
            }
            steps {
                sh '''
                    echo "lets see github logs..."
                    ls -la
                    ruby --version
                    gem install bundler
                    bundle install
                '''
            }
        }
        stage('Deploy') {
            agent {
                docker {
                    image 'ruby:3.2.2'
                    reuseNode true
                }    
            }
            steps {
                sh '''
                    echo "lets see github logs..."
                    ls -la
                    ruby --version
                    gem install bundler
                    bundle install
                    bundle exec ruby movies.rb
                    sleep 10
                '''
            }
        }
    }
}
