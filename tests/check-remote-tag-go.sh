# fixture: go
git tag go/v0.0.2 > /dev/null
git push --tags --quiet
git tag -d go/v0.0.2 > /dev/null
polyglot-release 0.0.2 --no-progress-bar
