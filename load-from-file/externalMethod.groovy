// Methods in this file will end up as object methods on the object that load returns.
def lookAtThis(String whoAreYou) {
    echo "Look at this, ${whoAreYou}! You loaded this from another file!"
    test1 = whoAreYou
    println("test1: ${test1}, whoAreYou: ${whoAreYou}")
    sleep 10
    println("test1: ${test1}, whoAreYou: ${whoAreYou}")
    testfunc2("test_func_2")
}

return this;

def testfunc2(String s1) {
    echo "testfunc: ${s1};"
    println("testfunc: ${s1};")
}
