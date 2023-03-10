pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        sleep 1
      }
    }

    stage('Get Change List') {
      steps {
        sleep 1
      }
    }

    stage('Checks') {
      parallel {
        stage('Lint') {
          steps {
            sleep 1
          }
        }

        stage('Compile Check') {
          steps {
            sleep 1
          }
        }

        stage('Merge Check') {
          steps {
            sleep 1
          }
        }

        stage('Check A') {
          steps {
            sleep 1
          }
        }

        stage('Check B') {
          steps {
            sleep 1
          }
        }

        stage('Check C') {
          steps {
            sleep 1
          }
        }

      }
    }

    stage('Mini-Regression') {
      steps {
        sleep 1
      }
    }

    stage('Merge') {
      steps {
        sleep 1
      }
    }

    stage('Clean Up') {
      steps {
        sleep 1
      }
    }

  }
}