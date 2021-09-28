pipeline {
  agent any
  stages {
    stage('pre') {
      steps{
        timestamp {
          script {
            env.scm_home = WORKSPACE
          }
        }
      }
    }
    stage('Parallel Stage1') {
      parallel (
        "test1": {externalMethod("adam")},
        "test2": {externalMethod("chuang")},
      )
    }
    stage('Parallel Stage2') {
      parallel(
        "test3": {externalCall("adam2")},
        "test4": {externalCall("chuang2")},
      )
    }
  }
}

def externalMethod(String name){
  node{
    // Load the file 'externalMethod.groovy' from the current directory, into a variable called "externalMethod".
    def externalMethod = load("${scm_home}/load-from-file/externalMethod.groovy")

    // Call the method we defined in externalMethod.
    externalMethod.lookAtThis(name)
  }
}

def externalCall(String name){
  node{
    // Now load 'externalCall.groovy'.
    def externalCall = load("${scm_home}/load-from-file/externalCall.groovy")

    // We can just run it with "externalCall(...)" since it has a call method.
    externalCall(name)
  }
}