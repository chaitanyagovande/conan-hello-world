#!/bin/sh

callBase()
{
    TIMESTAMP=$(date +%F_%T)
    BUILDNAME="cg_ansys_conan_hello_build"
    PROJECTKEY="cg-lab"
    DIRNAME="BaseWebGoat"
    VIRTUAL_REPO="cg-lab-conan"
    LOCAL_REPO="cg-lab-conan-local"
    SERVER="pscloud-useast"

    echo "Base Script executed from: ${PWD} at $TIMESTAMP"

    #CLEAN UP
    conan remove "openssl/1.1.1c*" -c
    conan remove "openssl/1.1.1c*" -r=$VIRTUAL_REPO -c
    conan remove "hello/*" -r=$VIRTUAL_REPO -c
    conan remove "hellotest/*" -r=$VIRTUAL_REPO -c
    conan remove "hello/*" -c


    conan create . --format=json --build="hello*" -r=$VIRTUAL_REPO > create_output.json
    conan upload "hello*" -r=$VIRTUAL_REPO -c

    # Create the buildInfo file.
    conan art:build-info create create_output.json $BUILDNAME $TIMESTAMP $LOCAL_REPO --server $SERVER --with-dependencies > somelib_build.json
    conan art:build-info upload somelib_build.json --server $SERVER --project $PROJECTKEY

}


echo "Script was called with $@"
if [[ "$1" == "base" ]]; then
    callBase
elif [[ "$1" == "dockerized" ]]; then
    callDockerized
else
    echo "Nothing here"
fi