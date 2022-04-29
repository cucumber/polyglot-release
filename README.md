[![Tests](https://github.com/cucumber/polyglot-release/actions/workflows/main.yml/badge.svg)](https://github.com/cucumber/polyglot-release/actions/workflows/main.yml)

# polyglot-release

Make releases with a single command

Supports the release process for Cucumber repos as documented in [RELEASING.md](https://github.com/cucumber/.github/blob/main/RELEASING.md).

## Works with polyglot repos

If we have a project structure with distinct folders for each language, it will release each language, updating the version number in the different package manager manifests in a single git commit.

```
$ tree
.
├── CHANGELOG.md
├── java
│   └── pom.xml
├── javascript
│   ├── package.json
│   └── package-lock.json
└── ruby
    ├── Rakefile
    └── VERSION
```

## Works with monoglot repos

If certain key files (`pom.xml`, `Rakefile`, `package.json`) are present in the root directory, the project is assumed to be a "monoglot" repo and we just release that language.

```
$ tree
.
├── CHANGELOG.md
├── pom.xml
```

## Installation

To install in a project run:

```shell
curl --silent -o ~/.local/bin/polyglot-release https://raw.githubusercontent.com/cucumber/polyglot-release/main/polyglot-release-bootstrapper
chmod 744 ~/.local/bin/polyglot-release
# Ensure ~/.local/bin is in your $PATH
polyglot-release --help
```

## Contributing

Use `./polyglot-release-test` to run the tests.

We use an [approval testing](https://approvaltests.com/) style for testing this app.

Each test is a shell script in the [`tests`](./tests) folder. Alongside the test file you will find `.expected` files that show different kinds of expected outputs and effects from running the test script. If you've run the tests you will also find matching `.actual` files.
