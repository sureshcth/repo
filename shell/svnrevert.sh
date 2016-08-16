#!/bin/sh
for f in $(svn st | grep \^[\?MCSA] | grep .iml | awk '{print $2}'); do  svn revert $f; done
