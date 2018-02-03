pipeline {
  agent any
  stages {
    stage('DEV') {
      parallel {
        stage('Build') {
          steps {
            echo 'Hello Build'
          }
        }
        stage('Build Code') {
          steps {
            echo 'Build'
          }
        }
        stage('Unit Tests') {
          steps {
            echo 'Run Unit Tests'
          }
        }
      }
    }
    stage('QA') {
      parallel {
        stage('QA') {
          steps {
            echo 'Deploy to QA'
            echo 'Run API Tests'
            echo 'Run UI Tests'
          }
        }
        stage('Deploy') {
          steps {
            echo 'Deploy'
          }
        }
        stage('API Tests') {
          steps {
            echo 'Run API Tests'
          }
        }
        stage('UI Tests') {
          steps {
            echo 'Run Cucumber Tests'
          }
        }
      }
    }
    stage('Production') {
      steps {
        echo 'Deploy to Production'
      }
    }
  }
  environment {
    DEV = 'DEV'
  }
}