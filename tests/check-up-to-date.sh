# fixture: ruby
set -e

# Copy the polyglot-release script and set the version to v0.0.1.
# This simulates a user who has installed a released version of polyglot-release.
pushd .. > /dev/null
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
sed "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.1/" polyglot-release > polyglot-release.tmp
mv polyglot-release.tmp polyglot-release
chmod +x polyglot-release
popd > /dev/null

# Create a release for v0.0.2 in polyglot-release.git.
# This makes the installed version of polyglot-release out of date.
pushd ../polyglot-release.git > /dev/null
git tag "v0.0.2"
popd > /dev/null

# Try to make a release using the now out of date version.
./../polyglot-release 2.0.0
