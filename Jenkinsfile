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
                    ls -la
                    ruby --version
                    bundler --version
                    bundle install
                    ls -la
                '''
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'ruby:3.2.2'
                    reuseNode true
                }
            }
            steps {
                sh '''
                    test -f app.rb
                    bundle install
                    bundle exec rspec
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
                    apt-get update
                    apt-get install -y nodejs npm
                    npm install -g netlify-cli
                    netlify --version
                '''
            }
        }
    }
}
