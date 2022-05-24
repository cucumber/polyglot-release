# fixture: ruby
set -e

# Copy the polyglot-release script and set the version to v0.0.1.
# This simulates a user who has installed a released version of polyglot-release.
pushd .. > /dev/null
cp "$(which polyglot-release)" polyglot-release
chmod 744 ./polyglot-release
sed -i".tmp" "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.1/" polyglot-release
popd > /dev/null

# Create a release for v0.0.2 in polyglot-release.git.
# This makes the installed version of polyglot-release out of date.
pushd ../polyglot-release.git > /dev/null
git tag "v0.0.2"
popd > /dev/null

# Create an up to date version that can be downloaded
pushd .. > /dev/null
mkdir "v0.0.2"
cp "$(which polyglot-release)" ./v0.0.2/polyglot-release
sed -i".tmp" "s/^POLYGLOT_RELEASE_VERSION=.*$/POLYGLOT_RELEASE_VERSION=0.0.2/" ./v0.0.2/polyglot-release
python3 -m http.server &
server_pid=$!
trap 'kill -9 $server_pid' SIGINT SIGQUIT SIGTERM EXIT
sleep 1 # Wait for server to start
popd > /dev/null

#  Update polyglot release
export POLYGLOT_RELEASE_UPDATE_LOCATION=http://0.0.0.0:8000
./../polyglot-release --update
