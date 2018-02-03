pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Hello Build'
      }
    }
    stage('QA') {
      steps {
        echo 'Deploy to QA'
        echo 'Run API Tests'
        echo 'Run UI Tests'
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