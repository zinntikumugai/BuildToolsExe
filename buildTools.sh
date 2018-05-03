#!/bin/bash

buildtoolsurl=https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
buildtoolsfile=BuildTools.jar

if [ ! -e spigot ]; then
    mkdir spigot
fi
cd spigot
curl -sO "${buildtoolsurl}" "${buildtoolsfile}"

java -jar "${buildtoolsfile}"