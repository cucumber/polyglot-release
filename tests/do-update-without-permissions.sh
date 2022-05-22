# fixture: ruby
set -e

# Copy the polyglot-release script and set the version to v0.0.1.
# This simulates a user who has installed a released version of polyglot-release.
pushd .. > /dev/null
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
sed -i "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.1/" polyglot-release
popd > /dev/null

# Create a release for v0.0.2 in polyglot-release.git.
# This makes the installed version of polyglot-release out of date.
pushd ../polyglot-release.git > /dev/null
git tag "v0.0.2"
popd > /dev/null

#  Update polyglot release without write permissions
chmod 544 ./../polyglot-release
./../polyglot-release --update
