#!/bin/bash
mvn -v
pwd
mvn compile
echo ""
echo ""
echo "DONE COMPILE"
echo ""
echo ""
mvn clean install
#mvn build
ls -la
artifact=find . -name "*.jar" -print0|xargs -r -0 ls -1 -t|head -1
echo $artifact
