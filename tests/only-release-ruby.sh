mv ruby/* .
rm -r javascript ruby java
git add .
git commit -am "Only Ruby"
polyglot-release 1.0.0 --no-git-commit --only-release
