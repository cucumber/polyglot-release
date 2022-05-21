# fixture: ruby
set -e

# Copy the polyglot-release script amd set the version to v0.0.1
pushd .. > /dev/null
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
sed -i "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.1/" polyglot-release
popd > /dev/null

# Create a release for v0.0.2 in git.
# This makes the copy of polyglot-release out of date.
pushd ../polyglot-release.git > /dev/null
git tag "v0.0.2"
popd > /dev/null

# Try to make a self release
./../polyglot-release 2.0.0
