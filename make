#!/bin/bash

BUILD_DIR="postman"

chmod u+rwx $BUILD_DIR
chmod go-w -R $BUILD_DIR

chmod a+r -R $BUILD_DIR

find $BUILD_DIR -type d -exec chmod a+x {} \;
chmod a+x $BUILD_DIR/DEBIAN/p*

dpkg-deb --build $BUILD_DIR postman_6.1.3.deb

# vim: filetype=sh:
