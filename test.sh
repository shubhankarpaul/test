#!/bin/bash
mvn -v
pwd
mvn -Dmaven.javadoc.skip=true verify && mvn compile
echo ""
echo ""
echo "DONE COMPILE"
echo ""
echo ""
mvn -Dmaven.javadoc.skip=true verify && mvn clean install
#mvn build
ls -l
