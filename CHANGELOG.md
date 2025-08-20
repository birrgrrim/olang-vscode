# Change Log

All notable changes to the "olang" extension will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.1] - 2024-01-25

### Changed
- Updated marketplace appearance to match extension icon theme
- Adjusted gallery banner color for better visual consistency

[0.1.1]: https://github.com/birrgrrim/olang-vscode/compare/v0.1.0...v0.1.1

## [0.1.0] - 2024-01-25

### Added
- Initial release to VS Code Marketplace
- Syntax highlighting for O language:
  - Keywords: control flow, system operations, I/O, etc.
  - Types: all scalar types (bool, byte, short, etc.)
  - Constants: null (0N-) and infinity (0W-) values
  - Numbers: decimal, hexadecimal, boolean
  - Strings and comments
- Basic language features:
  - Comment toggling (line and block comments)
  - Bracket matching
  - Auto-closing pairs
  - Basic indentation rules

[0.1.0]: https://github.com/birrgrrim/olang-vscode/releases/tag/v0.1.0

## [0.0.4] - 2024-01-25

### Added
- Support for null constants (0N-prefixed):
  - 0Nx, 0Nh, 0Ni, 0N, 0n, 0Nj, 0Ng, 0Ne, 0Nf, 0Np, 0Nn, 0Nz, 0Nd, 0Nm, 0Nt, 0Nu, 0NV, 0N0
- Support for infinity constants (0W-prefixed):
  - 0Wx, 0Wh, 0Wi, 0W, 0w, 0Wj, 0Wg, 0We, 0Wf, 0Wp, 0Wn, 0Wz, 0Wd, 0Wm, 0Wt, 0Wu, 0WV, 0W0

### Changed
- Added missing keywords:
  - System control: kill, panic, close, sleep, exit
  - Control flow: match, test

[Previous versions...]

[0.0.4]: https://github.com/birrgrrim/olang-vscode/compare/v0.0.3...v0.0.4

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
