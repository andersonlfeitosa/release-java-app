#!/usr/bin/env bash

mvn -B release:perform \
          -Dgoals=install \
          -Darguments="-Dmaven.test.skip=true -Dmaven.javadoc.skip=true"