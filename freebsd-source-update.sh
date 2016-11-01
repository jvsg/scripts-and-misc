#!/bin/sh

svnlite cleanup
svnlite up
until [ $? -eq 0 ]; do
    svnlite cleanup
    svnlite up
done
