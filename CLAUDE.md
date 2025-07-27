# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dogoo is a Dart/Flutter utility package monorepo managed with Melos. It provides common utilities and integrations for Korean developers, including string manipulation, logging, math functions, and Notion API integration.

## Common Commands

### Development Commands

```bash
# Bootstrap all packages (install dependencies)
melos bootstrap

# Run all linting checks (analyze + format)
melos run lint:all

# Run static analysis only
melos run lint:analyze

# Run formatting checks only
melos run lint:format

# Apply automatic fixes
melos run fix:all

# Run all tests
melos run test:all

# Run tests for specific package
melos run test --scope=<package_name>
```

### Package Management

```bash
# Add dependency to specific package
melos add <dependency> --scope=<package_name>

# Version and publish packages
melos version

# Generate version changelogs
melos version --all
```

## Architecture

### Monorepo Structure

- **packages/common/**: Core utility packages (bool, datetime, log, map, math, num, string utilities)
- **packages/flutter/**: Flutter-specific packages (currently empty)
- **packages/integrations/**: Third-party service integrations (notion_dogoo)

### Package Organization

Each package follows a consistent structure:

- `lib/<package_name>.dart`: Main export file
- `lib/src/`: Implementation files organized by feature
- `lib/src/functions/`: Standalone utility functions
- `lib/src/extension.dart`: Type extensions
- `lib/src/const/`: Constants and enums
- `example/`: Usage examples
- `test/`: Unit tests

### Key Packages

- **log_dogoo**: Advanced logging system with filters, formatters, and printers
- **notion_dogoo**: Dart SDK for Notion API with comprehensive object models
- **string_dogoo, num_dogoo, bool_dogoo, etc.**: Type-specific utility extensions

## Code Standards

### Analysis Configuration

- Uses strict analysis settings with `strict-casts`, `strict-inference`, and `strict-raw-types`
- Excludes generated files (`*.freezed.dart`, `*.g.dart`)
- Custom linter rules in `all_linter_rules.yaml`
- Treats missing required parameters and missing returns as errors

### Code Style

- Prefers single quotes for strings (`prefer_double_quotes: false`)
- Allows dynamic annotations for flexibility
- Explicit type declarations preferred over type inference where clarity benefits
- Uses conventional commits for changelog generation

## Testing

### Running Tests

- All packages must have tests in `test/` directory
- Use `melos run test:all` to run all tests
- Use `melos run test --scope=<package_name>` for specific package
- Tests use standard `test` package

### Test Structure

Each package should have corresponding test files following the pattern `<package_name>_test.dart`.

## Development Workflow

1. **Making Changes**: Work in feature branches from `main`
2. **Code Quality**: Run `melos run lint:all` before committing
3. **Testing**: Ensure all tests pass with `melos run test:all`
4. **Fixing Issues**: Use `melos run fix:all` for automatic fixes
5. **Versioning**: Use `melos version` for releasing changes

## Package Dependencies

Most packages are lightweight with minimal dependencies:

- `lints: ^3.0.0` for linting
- `test: ^1.24.0` for testing
- Individual packages may have specific dependencies as needed

## Language Requirements

- Dart SDK: `>=3.0.0 <4.0.0` (some packages require `^3.4.3`)
- Flutter compatibility maintained across packages
