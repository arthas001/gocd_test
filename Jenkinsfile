pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
      }
    }
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'Testing'
          }
        }
        stage('test1') {
          steps {
            echo 'success'
          }
        }
      }
    }
    stage('Deploy - Staging') {
      steps {
        echo 'Deply - Staging'
        echo 'Deply - Staging'
      }
    }
    stage('Sanity check') {
      steps {
        input 'Does the staging environment look ok?'
      }
    }
    stage('Deploy - Production') {
      steps {
        echo './deploy production'
      }
    }
  }
  post {
    always {
      echo 'One way or another, I have finished'
      deleteDir()
      
    }
    
    success {
      echo 'I succeeeded!'
      
    }
    
    unstable {
      echo 'I am unstable :/'
      
    }
    
    failure {
      echo 'I failed :('
      
    }
    
    changed {
      echo 'Things were different before...'
      
    }
    
  }
}