mv java/* .
rm -r javascript ruby java
git add .
git commit -am "Only Java"
polyglot-release 1.0.0 --no-git-commit --only-release
