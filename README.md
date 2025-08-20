# O Language Support

[![Version](https://img.shields.io/github/v/tag/birrgrrim/olang-vscode?label=version)](https://github.com/birrgrrim/olang-vscode/releases/latest)
[![License](https://img.shields.io/github/license/birrgrrim/olang-vscode)](https://github.com/birrgrrim/olang-vscode/blob/main/LICENSE)
[![VS Code Compatibility](https://img.shields.io/badge/vscode-%5E1.0.0-blue)](https://code.visualstudio.com/)

O Language support extension for VS Code and Cursor IDE providing syntax highlighting and REPL integration.

## Features

### Syntax Highlighting
- Full support for O language syntax:
  - Keywords and control structures
  - Built-in types
  - Special constants (null and infinity values)
  - Numbers (decimal, hexadecimal, boolean)
  - Strings and comments

### REPL Integration
- Start tachyon REPL directly from VS Code
- Evaluate code directly in the editor:
  - Selected text (Cmd/Ctrl+Enter)
  - Entire file (Cmd/Ctrl+Shift+Enter)
- Optional rlwrap support for better REPL experience

### Language Features
- Comment toggling (line and block)
- Bracket matching
- Auto-closing pairs
- Basic indentation rules

## Requirements
- `tachyon` executable should be in PATH or configured
- Optional: `rlwrap` for better REPL experience

## Extension Settings
This extension contributes the following settings:

* `olang.tachyonPath`: Path to tachyon executable (default: "tachyon")
* `olang.useRlwrap`: Enable/disable rlwrap support (default: true)

## Keybindings
- `Cmd/Ctrl+Enter` - Evaluate selected text in REPL
- `Cmd/Ctrl+Shift+Enter` - Evaluate current file in REPL

## Commands
- `O: Start REPL` - Start tachyon REPL
- `O: Evaluate Selection` - Evaluate selected code
- `O: Evaluate File` - Load current file in REPL

## Installation

### VS Code
Install from VS Code Marketplace:
1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "O Language"
4. Click Install

### Cursor IDE
Install from Extensions (Marketplace):
1. Open Cursor
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "O Language"
4. Click Install

## Links
- [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=birrgrrim.olang)
- [Open VSX Registry](https://open-vsx.org/extension/birrgrrim/olang)
- [O Language Documentation](https://theplatform.technology/index.html)