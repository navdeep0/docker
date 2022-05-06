pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'hello'
      }
    }

    stage('test') {
      parallel {
        stage('test') {
          steps {
            echo 'test for windows'
          }
        }

        stage('test2') {
          steps {
            echo 'test for android'
          }
        }

      }
    }

    stage('deploy') {
      steps {
        echo 'deploy to prod'
      }
    }

  }
}