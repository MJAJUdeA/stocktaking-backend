pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        withGradle() {
          sh './gradlew build'
        }

      }
    }

  }
}