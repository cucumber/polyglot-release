# fixture: polyglot-release
set -e

# Get the real script
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
git commit --quiet --all --message "Use the real polyglot-release script"

# Create a fake release, without using polyglot-release to limit the log info
git tag "v0.0.2"
git push --quiet --tags

# Set the local script to an outdated version
sed -i "s%^POLYGLOT_RELEASE_VERSION=.*$%POLYGLOT_RELEASE_VERSION=0.0.1%" polyglot-release
git commit --quiet --all --message "Set POLYGLOT_RELEASE_VERSION to old version"
git push --quiet

# Try to make a self release
./polyglot-release 2.0.0
