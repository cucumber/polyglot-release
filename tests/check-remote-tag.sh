git tag v0.0.2 > /dev/null
git push --tags --quiet
git tag -d v0.0.2 > /dev/null
polyglot-release 0.0.2 --no-progress-bar
