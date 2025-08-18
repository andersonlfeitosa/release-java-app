#!/usr/bin/env bash

show_error() {
  echo "Usage: $(basename "$0") VERSION NEXT_VERSION"
  echo "Final version will be: VERSION: 1.0.VERSION and 1.0.NEXT_VERSION-SNAPSHOT"
}

if [[ $# == 2 ]]
then
  mvn -B release:prepare \
          -DreleaseVersion="1.0.$1" \
          -DdevelopmentVersion="1.0.$2-SNAPSHOT" \
          -Dgoals=install \
          -Darguments="-Dmaven.test.skip=true -Dmaven.javadoc.skip=true"
else
  show_error
fi