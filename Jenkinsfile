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
        stage('Test1') {
          steps {
            echo 'Testing'
          }
        }
        stage('Test2') {
          steps {
            echo 'success!'
          }
        }
        stage('Test3') {
          steps {
            echo 'success!'
            input 'Is OK?'
          }
        }
      }
    }
    stage('Deploy - Staging') {
      steps {
        echo 'Deply - Staging'
        echo 'Deply - Staging'
        sh 'echo "docker build . -t test:latest"'
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
        mail(subject: 'test', body: 'test', to: 'hanxuepeng001@126.com')
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