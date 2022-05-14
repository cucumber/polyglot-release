# fixture: polyglot-release
set -e

pushd .. > /dev/null

# Copy the polyglot-release script
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release

# Set the version to v0.0.1
sed -i "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.1/" polyglot-release
popd > /dev/null

# Create a release for v0.0.2 in git.
# This makes the copy of polyglot-release out of date.
git tag "v0.0.2"
git push --quiet --tags

# Try to make a self release
./../polyglot-release 2.0.0
