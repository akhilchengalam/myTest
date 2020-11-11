pipeline { 
    agent {
        docker { image 'node:14-alpine' }
    } 
    stages {
        stage('Checkout') { 
            steps { 
                checkout scm
            }
        }
        stage('Test'){
            steps {
                sh 'virtualenv env -p python3'
		sh '. env/bin/activate'
                sh 'env/bin/pip install -r requirements.txt'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose down -v'
                sh 'docker-compose up'
            }
        }
    }
}
