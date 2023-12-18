#!/usr/bin/env bash

sudo mk-build-deps --install debian/control
DEB_BUILD_OPTIONS="nocheck" MAKE=ninja dpkg-buildpackage -b -us -uc -jauto
