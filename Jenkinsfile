#!groovy

node {
    checkout scm

    stage 'Build'
    sh 'sudo /bin/sh ./build.sh'

    def devel = docker.image('atomica/arch-devel:latest')

    docker.withRegistry('https://index.docker.io/v1/', 'docker-jasonrm') {
        stage 'Push to Docker Hub'
        devel.push()
    }

    docker.withRegistry('https://docker.artfire.me/', 'docker-artfire') {
        stage 'Push to ArtFire'
        devel.push()
    }
}
