#!/usr/bin/env bash

mvn -B release:prepare \
          -DreleaseVersion=$1 \
          -DdevelopmentVersion="$2"-SNAPSHOT \
          -Dgoals=install