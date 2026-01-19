#!/bin/sh

JENKINS_URL="http://your-jenkins-server-url:port"
CLI_JAR="jenkins-cli.jar"

if [ ! -f "$CLI_JAR" ]; then
    echo "Downloading Jenkins CLI client..."
    if command -v curl >/dev/null 2>&1; then
        curl -O "$JENKINS_URL/jnlpJars/$CLI_JAR"
    elif command -v wget >/dev/null 2>&1; then
        wget "$JENKINS_URL/jnlpJars/$CLI_JAR"
    else
        echo "Error: curl or wget not found. Cannot download $CLI_JAR."
        exit 1
    fi
    if [ $? -eq 0 ]; then
        echo "Download complete."
    else
        echo "Download failed."
        exit 1
    fi
else
    echo "Jenkins CLI client already exists."
fi

