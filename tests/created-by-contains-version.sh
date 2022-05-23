# fixture: ruby
set -e

pushd .. > /dev/null

# Get the real script
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
# Set the real script to a released version
sed -i".tmp" "s%^POLYGLOT_RELEASE_VERSION=.*$%POLYGLOT_RELEASE_VERSION=0.0.1%" polyglot-release
popd > /dev/null


# Make a release
./../polyglot-release 1.0.0
