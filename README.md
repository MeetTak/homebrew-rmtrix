# Homebrew Tap for rmtrix

This is a [Homebrew](https://brew.sh/) tap for [rmtrix](https://github.com/MeetTak/rmtrix), a CLI tool for searching and removing files.

## Installation

```bash
brew tap meettak/rmtrix
brew install rmtrix
```

Or install directly:

```bash
brew install meettak/rmtrix/rmtrix
```

## Usage

```bash
# Search for files containing "ollama"
rmtrix Search -s ollama

# Remove files containing "unwanted" 
rmtrix Remove -r unwanted

# Show help
rmtrix --help
```

## Requirements

- Java 17 or later (automatically installed as dependency)

## About

rmtrix is a CLI tool that provides file search and removal capabilities through shell scripts.
