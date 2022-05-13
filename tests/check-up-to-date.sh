# fixture: polyglot-release
set -e

# Get the real script and set the release version to outdated version 0.0.0
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
sed -i "s%^POLYGLOT_RELEASE_VERSION=.*$%POLYGLOT_RELEASE_VERSION=0.0.0%" polyglot-release
sed -i "s%^POLYGLOT_RELEASE_GIT_REPO=.*$%POLYGLOT_RELEASE_GIT_REPO=$(git config --get remote.origin.url)%" polyglot-release
git commit --quiet --all --message "Set POLYGLOT_RELEASE_VERSION to old version"

# Try self release
./polyglot-release 1.0.0
