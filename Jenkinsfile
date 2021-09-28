pipeline {
  agent any
  stages {
    stage('stage_1') {
      steps {
        sh 'echo "shell script message"'
      }
      // Load the file 'externalMethod.groovy' from the current directory, into a variable called "externalMethod".
      def externalMethod = load("externalMethod.groovy")

      // Call the method we defined in externalMethod.
      externalMethod.lookAtThis("Steve")

      // Now load 'externalCall.groovy'.
      def externalCall = load("externalCall.groovy")

      // We can just run it with "externalCall(...)" since it has a call method.
      externalCall("Steve")
    }

  }
}