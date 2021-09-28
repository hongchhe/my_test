pipeline {
  agent any
  stages {
    stage('stage_1') {
      steps {
        sh 'echo "shell script message"'
        script {
          parallel(
            "test1": {externalMethod("adam")},
            "test2": {externalMethod("chuang")},
          )
        }
        script {
          parallel(
            "test3": {externalCall("adam2")},
            "test4": {externalCall("chuang2")},
          )
        }
      }
    }

  }
}

def externalMethod(String name){
  node{
    // Load the file 'externalMethod.groovy' from the current directory, into a variable called "externalMethod".
    def externalMethod = load("load-from-file/externalMethod.groovy")

    // Call the method we defined in externalMethod.
    externalMethod.lookAtThis(name)
  }
}

def externalCall(String name){
  node{
    // Now load 'externalCall.groovy'.
    def externalCall = load("load-from-file/externalCall.groovy")

    // We can just run it with "externalCall(...)" since it has a call method.
    externalCall(name)
  }
}