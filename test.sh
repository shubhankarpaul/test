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
artifact=`find . -name "*.jar" -print0|xargs -r -0 ls -1 -t|head -1`

echo "Current Snapshot Version"

mvn -Dexec.executable='echo' -Dexec.args='${project.version}' --non-recursive exec:exec -q
echo ""
echo "Changing The Snapshote Version"
echo ""

mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT
echo ""
echo "Snapshot version after change"
echo ""
mvn -Dexec.executable='echo' -Dexec.args='${project.version}' --non-recursive exec:exec -q
echo ""
echo $artifact
