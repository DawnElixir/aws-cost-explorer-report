#!/bin/bash
#Only required to build the Lambda layer libraries
sudo docker build -t ce-report-build .
sudo docker run --rm -v ${PWD}/bin:/vol ce-report-build
