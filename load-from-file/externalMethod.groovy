// Methods in this file will end up as object methods on the object that load returns.
def lookAtThis(String whoAreYou) {
    echo "Look at this, ${whoAreYou}! You loaded this from another file!"
    test1 = ${whoAreYou}
    echo "test1: ${test1}, whoAreYou: ${whoAreYou}"
    sleep 3
    echo "test1: ${test1}, whoAreYou: ${whoAreYou}"
}

return this;