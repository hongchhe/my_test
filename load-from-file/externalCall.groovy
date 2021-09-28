// If there's a call method, you can just load the file, say, as "foo", and then invoke that call method with foo(...) 
def call(String whoAreYou) {
    echo "Now we're being called more magically, ${whoAreYou}, thanks to the call(...) method."
    test1 = ${whoAreYou}
    println("test1: ${test1}, whoAreYou: ${whoAreYou}")
    sleep 3
    println("test1: ${test1}, whoAreYou: ${whoAreYou}")
}

return this;
