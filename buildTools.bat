@echo off
cd /d %~dp0
set buildtoolsurl=https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
set buildtoolsfile=%~dp0%spigot\\BuildTools.jar

if NOT EXIST "spigot" (
    mkdir spigot
)

bitsadmin /TRANSFER dl "%buildtoolsurl%" "%buildtoolsfile%"
if EXIST "%buildtoolsfile%" (
    call java -jar "%buildtoolsfile%"
) ELSE (
    echo "Download Faild."
)

pause