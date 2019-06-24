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
ls -l
