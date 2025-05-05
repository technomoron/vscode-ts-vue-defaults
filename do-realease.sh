#!/bin/sh
#
# Reads version from package.json and creates a release tag
#

VERSION=$(node -p "require('./package.json').version")

echo "Creating release for ${VERSION}"

git tag -a "v${VERSION}" -m "Release version ${VERSION}"
git push origin "v${VERSION}"
