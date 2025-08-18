#!/usr/bin/env bash

mvn -B release:prepare \
          -DreleaseVersion="1.0.$1" \
          -DdevelopmentVersion="1.0.$2-SNAPSHOT" \
          -Dgoals=install \
          -Darguments="-Dmaven.test.skip=true -Dmaven.javadoc.skip=true"