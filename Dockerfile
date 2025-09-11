FROM busybox:latest

# ARG TEST_SECRET

RUN --mount=type=secret,id=TEST_SECRET,env=TEST_SECRET \
    echo "TEST_SECRET: ${TEST_SECRET}"
