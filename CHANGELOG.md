# Change Log

All notable changes to the "olang" extension will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.3] - 2024-01-25

### Changed
- Updated type definitions to match official O language reference
- Added correct scalar types:
  - bool, byte, short, int, long
  - symbol, char, guid
  - real, float
  - timestamp, timespan, datetime
  - date, month, time, minute, second
- Updated keywords to match official O language reference
- Added comprehensive list of keywords:
  - Control flow: if, elif, else, till
  - Reactive: reagent, react
  - I/O: read, write, readln, print, println
  - System: load, spawn, argv, setenv, getenv, os, system
  - Meta-programming: meta, parse, eval
  - Functions: return, yield
  - Collections: each, count, enlist, distinct
  - Math: abs, mod, ceil, floor, frac
  - Other: get, set, show

[Previous versions...]

[0.0.3]: https://github.com/birrgrrim/olang-vscode/compare/v0.0.2...v0.0.3

## [0.0.2] - 2024-01-25

### Changed
- Removed single quote string support as it's used only for single characters in O language
- Updated syntax highlighting rules to better match O language specifications

[0.0.2]: https://github.com/birrgrrim/olang-vscode/compare/v0.0.1...v0.0.2

## [0.0.1] - 2024-01-25

### Added
- Initial release
- Basic syntax highlighting for O language
- Support for:
  - Keywords and control structures
  - Built-in types
  - Numbers (decimal and hexadecimal)
  - Strings (single and double quoted)
  - Comments (line and block)
  - Functions
  - Operators
- Language configuration features:
  - Comment toggling (line and block)
  - Bracket matching
  - Auto-closing pairs
  - Basic indentation rules

### Known Issues
- First version, basic functionality only
- May need adjustments for specific O language constructs

[0.0.1]: https://github.com/yourusername/olang/releases/tag/v0.0.1
