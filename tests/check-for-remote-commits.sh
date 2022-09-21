touch some-file
git add some-file
git commit --quiet --message="Add some-file"
git push --quiet
git reset --quiet --hard HEAD~1
polyglot-release 1.0.0
