pipeline {
  agent any

  stages {
        stage('checkout') {
          steps {
            git branch: 'master',
                url: 'file:///var/jenkins_home/files'
        }
    }
        stage('build') {
          steps {
          sh "docker build -t alpdemo:base -f /var/jenkins_home/files/docker/alpine/Dockerfile ."
        }  
      }
       stage('nginx') {
         steps {
          sh "docker build -t nginx:${env.BUILD_ID} -f ./docker/nginx/Dockerfile ./docker/nginx"
          sh "docker/nginx/run-container.sh nginx:${env.BUILD_ID}"
      }
    }

      stage('nodejs') {
         steps {
          sh "docker build -t nodejs:${env.BUILD_ID} -f ./docker/nodejs/Dockerfile ./docker/nodejs"
          sh "docker/nodejs/run-container.sh nodejs:${env.BUILD_ID}"
      }
    }
  }
}
