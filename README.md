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
│── dotnet
│   ├── Project.sln
│   └── Project
│       └── Project.csproj
├── github-action
│   └── action.yml
├── go
│   └── go.mod
├── javascript
│   └── package.json
├── java
│   └── pom.xml
├── perl
│   ├── cpanfile
│   └── VERSION
├── python
│   └── setup.py # or pyproject.toml
└── ruby
    ├── project.gemspec
    └── VERSION
```

## Works with monoglot repos

If certain key files (`pom.xml`, `*.gemspec`, `package.json`, etc.) are present in the root directory, the project is assumed to be a "monoglot" repo and we just release that language.

```
$ tree
.
├── CHANGELOG.md
├── pom.xml
```

## Installation

To install in a project run:

```shell
POLYGLOT_RELEASE_VERSION=0.9.1 && \
curl --silent -o /usr/local/bin/polyglot-release https://raw.githubusercontent.com/cucumber/polyglot-release/v$POLYGLOT_RELEASE_VERSION/polyglot-release
chmod 755 /usr/local/bin/polyglot-release
# Ensure /usr/local/bin is in your $PATH
polyglot-release --help
```

## Contributing

To run all the tests:

    ./polyglot-release-test

To run a single test:

    ./polyglot-release-test <path-to-test-script>

We use an [approval testing](https://approvaltests.com/) style for testing this app.

Each test is a shell script in the [`tests`](./tests) folder. Alongside the test file you will find `.expected` files that show different kinds of expected outputs and effects from running the test script. If you've run the tests you will also find matching `.actual` files.

### Fixtures

When a test runs, we set up a temporary folder to run it in, with a `local` git repo and a remote `origin` repo (sitting in a folder right next to it). The `local` repo starts with an initial git commit with the contents of one of the [`tests/fixtures`](./tests/fixtures) folders. Use a header in your test script to specify the fixture to use (otherwise it will default to the `polyglot` fixture)

e.g.

```
# fixture: my-unique-setup
polyglot-release 1.0.0
```

### Exploratory testing

Sometimes it's helpful to play around with how the tool works in a safe, sandbox environment.

You can start a bash prompt in the same environment as an automated test would run in (with `local` and `origin` git repo folders) like this:

    polyglot-release-test ./tests/fixtures/<some-fixture>

## Releasing

You can use `polyglot-release` to release polyglot-release:

```
./polyglot-release vMAJOR.MINOR.PATCH
```
