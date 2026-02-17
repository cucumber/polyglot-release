# Changelog

## [Unreleased]
### Added
- Support .Net `Directory.Build.props` files ([#114](https://github.com/cucumber/polyglot-release/pull/114))

## [1.9.0] - 2025-12-08
### Added
- Support .Net `.slnx` projects ([#111](https://github.com/cucumber/polyglot-release/pull/111))

## [1.8.0] - 2025-12-08

## [1.7.2] - 2025-11-14
### Fixed
- Update `realpath --relative-to` detection ([#109](https://github.com/cucumber/polyglot-release/pull/109))

## [1.7.1] - 2025-10-08
### Fixed
- Allow any character in Python project names ([#108](https://github.com/cucumber/polyglot-release/pull/108))

## [1.7.0] - 2025-10-08
### Added
- Support Python with UV ([#107](https://github.com/cucumber/polyglot-release/pull/107))

## [1.6.1] - 2025-07-24
### Fixed
- Check if release exists against remote ([#105](https://github.com/cucumber/polyglot-release/pull/105))

## [1.6.0] - 2024-11-24
### Added
- Support CPP ([#104](https://github.com/cucumber/polyglot-release/pull/104))

## [1.5.0] - 2024-08-19
### Added
- Support android ([#101](https://github.com/cucumber/polyglot-release/pull/101))

## [1.4.0] - 2024-08-12
### Added
- A rudimentary progress indicator ([#100](https://github.com/cucumber/polyglot-release/pull/100))

## [1.3.2] - 2022-12-27
### Fixed
- Go: Tag polyglot go releases with go/vVERSION ([#93](https://github.com/cucumber/polyglot-release/pull/93))

## [1.3.1] - 2022-12-17
### Fixed
- Go: Also update module imports ([#90](https://github.com/cucumber/polyglot-release/pull/90))

## [1.3.0] - 2022-12-02
### Fixed
- Go: Only use major version in go module ([#86](https://github.com/cucumber/polyglot-release/pull/86))

## [1.2.0] - 2022-11-09
### Added
- Support c ([#83](https://github.com/cucumber/polyglot-release/pull/83))

## [1.1.0] - 2022-09-22
### Added
- Support elixir ([#82](https://github.com/cucumber/polyglot-release/pull/82))

## [1.0.0] - 2022-06-09
### Added
- Check if the current branch is even with `origin`

## [0.9.3] - 2022-05-24
### Added
- Support self updating with `--update`

## [0.9.2] - 2022-05-24
### Fixed
- Make the scripts work on MacOS
- New version argument must have the format `<digits>.<digits>.<digits>`.

## [0.9.1] - 2022-05-22
### Fixed
- Fixed broken check_up_to_date due to duplicate signed tags in Github

## [0.9.0] - 2022-05-22
### Added
- First release of polyglot-release

[Unreleased]: https://github.com/cucumber/polyglot-release/compare/v1.9.0...HEAD
[1.9.0]: https://github.com/cucumber/polyglot-release/compare/v1.8.0...v1.9.0
[1.8.0]: https://github.com/cucumber/polyglot-release/compare/v1.7.2...v1.8.0
[1.7.2]: https://github.com/cucumber/polyglot-release/compare/v1.7.1...v1.7.2
[1.7.1]: https://github.com/cucumber/polyglot-release/compare/v1.7.0...v1.7.1
[1.7.0]: https://github.com/cucumber/polyglot-release/compare/v1.6.1...v1.7.0
[1.6.1]: https://github.com/cucumber/polyglot-release/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/cucumber/polyglot-release/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/cucumber/polyglot-release/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/cucumber/polyglot-release/compare/v1.3.2...v1.4.0
[1.3.2]: https://github.com/cucumber/polyglot-release/compare/v1.3.1...HEAD
[1.3.1]: https://github.com/cucumber/polyglot-release/compare/v1.3.0...HEAD
[1.3.0]: https://github.com/cucumber/polyglot-release/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/cucumber/polyglot-release/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/cucumber/polyglot-release/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/cucumber/polyglot-release/compare/v0.9.3...HEAD
[0.9.3]: https://github.com/cucumber/polyglot-release/compare/v0.9.2...HEAD
[0.9.2]: https://github.com/cucumber/polyglot-release/compare/v0.9.1...HEAD
[0.9.1]: https://github.com/cucumber/polyglot-release/compare/v0.9.0...HEAD
[0.9.0]: https://github.com/cucumber/polyglot-release/compare/ad3c912c06971aefdd597d7c315ca75fa93ce83f...v0.9.0~~
