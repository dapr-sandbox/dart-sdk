---
type: docs
title: "Contributing to the Dart SDK"
linkTitle: "Dart SDK"
weight: 3000
description: Guidelines for contributing to the Dapr Dart SDK
---

When contributing to the [Dart SDK](https://github.com/dapr/dart-sdk) the following rules and best-practices should be followed.

## Development Environment setup
Following steps could easily allow a willing contributor to bootstrap a development 
environment.
### Using github codespace [Highly recommended]

#### Steps
1. Fork the [dapr/dart-sdk](https://github.com/dapr/dart-sdk) repo.
2. On the main page, click on the *Code* dropdown and then select *Codespaces* tab.
3. Click on the **New codespace** button. This will setup a code space based with all the necessary settings.
4. Validate the environment by running `melos run test:all` command.

### Using VSCode devcontainers [Recommended]

{{% alert title="Note" color="warning" %}}
The following step are only tested in a Windows 10 system. If there is a difference in other platforms, please raise an Issue/PR with the required steps.
{{% /alert %}}

{{% alert title="Prequisites" color="primary" %}}
Docker desktop is already installed.
{{% /alert %}}

1. Fork the [dapr/dart-sdk](https://github.com/dapr/dart-sdk) repo.
2. Checkout the repository into your Windows-10 system.
3. Open your local clone in VS-Code. It will automatically detects `.devcontainer` configuration and pops a notification to `open in container`. Click on open.
4. Wait for docker desktop to build and setup the container.
5. Validate the build by running `melos run test:all` command.

### Using local setup [least recommended]

_documentation work in progress_

### General instructions and hints

After any of the above mentioned environment is setup successfully, contributors can proceed by making changes. The repository is maintained in mono-repo style using the [melos package](https://pub.dev/packages/melos). For a detailed documentation about melos check this [site](https://docs.page/invertase/melos). Ensure all the new changes are tested as and when necessary before making PR. Most importantly, ensure existing tests doesn't break unless there is logical reason e.g. adapting to the correct specification of dapr.

Keep all the public facing api's documented :-).

Use `dapr_common` package to hold all the generated data classes. Then the `dapr_server` or `dapr_client` related data classes can be exported respectively in thos packages.

## Commit Guidelines

The Dapr dart SDK uses the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
specification. The melos cli tool uses these to automatically generate
a changelog based on the commit messages. Here's a guide to writing a commit message
to allow this:

### Format

```
type(scope)!: subject
```

- `type`: the type of the commit is one of the following:

  - `feat`: new features.
  - `fix`: bug fixes.
  - `docs`: documentation changes.
  - `refactor`: refactor of a particular code section without introducing
    new features or bug fixes.
  - `style`: code style improvements.
  - `perf`: performance improvements.
  - `test`: changes to the test suite.
  - `ci`: changes to the CI system.
  - `build`: changes to the build system (we don't yet have one so this shouldn't apply).
  - `chore`: for other changes that don't match previous types. This doesn't appear
    in the changelog.

- `scope`: section of the codebase that the commit makes changes to. If it makes changes to
  many sections, or if no section in particular is modified, leave blank without the parentheses.
  Examples:

  - Commit that adds a `test`:
  ```
  test(dapr_client): add a dapr_client e2e test
  ```

  - Commit that changes many things at once:
  ```
  style: Overide analysis options.
  ```

  For changes to examples, the scope should be the example name with the `examples/` prefix:

  - ❌ `fix(agnoster): commit subject`
  - ✅ `fix(examples/http/actor): commit subject`

- `!`: this goes after the `scope` (or the `type` if scope is empty), to indicate that the commit
  introduces breaking changes.

  Optionally, you can specify a message that the changelog tool will display to the user to indicate
  what's changed and what they can do to deal with it. You can use multiple lines to type this message;
  the changelog parser will keep reading until the end of the commit message or until it finds an empty
  line.

  Example (made up):

  ```
  style(agnoster)!: change dirty git repo glyph

  BREAKING CHANGE: the glyph to indicate when a git repository is dirty has
  changed from a Powerline character to a standard UTF-8 emoji.

  Fixes #420

  Co-authored-by: Username <email>
  ```

- `subject`: a brief description of the changes. This will be displayed in the changelog. If you need
  to specify other details you can use the commit body but it won't be visible.

  Formatting tricks: the commit subject may contain:

  - Links to related issues or PRs by writing `#issue`. This will be highlighted by the changelog tool:
    ```
    feat(dapr_server): add support for aquiduct (#9467)
    ```

  - Formatted inline code by using backticks: the text inbetween backticks will also be highlighted by
    the changelog tool:
    ```
    feat(shell-proxy): enable unexported `DEFAULT_PROXY` setting (#9774)
    ```

### Style

Try to keep the first commit line short. This is harder to do using this commit style but try to be
concise and if you need more space, you can use the commit body. Try to make sure that the commit
subject is clear and precise enough that users will know what change by just looking at the changelog.

## Coding Rules

To ensure consistency throughout the source code, keep these rules in mind as you are working:

* All features or bug fixes **must be tested** by one or more specs (unit-tests).
* All public API methods **must be documented**. This is automatically enforced in static analysis.
* Ensure existing tests doesn't fail and update them if necessary.

## Examples

The `examples` directory contains code samples for users to run to try out specific functionality of the various dart SDK packages and extensions. When writing new and updated samples keep in mind:

- All examples should be runnable on Windows, Linux, and MacOS. While dart code is consistent among operating systems, any pre/post example commands should provide options through [codetabs]({{< ref "contributing-docs.md#tabbed-content" >}})
- Contain steps to download/install any required pre-requisites. Someone coming in with a fresh OS install should be able to start on the example and complete it without an error. Links to external download pages are fine.

## Docs

The `daprdocs` directory contains the markdown files that are rendered into the [Dapr Docs](https://docs.dapr.io) website. When the documentation website is built, this repo is cloned and configured so that its contents are rendered with the docs content. When writing docs, keep in mind:

   - All rules in the [docs guide]({{< ref contributing-docs.md >}}) should be followed in addition to these.
   - All files and directories should be prefixed with `dart-` to ensure all file/directory names are globally unique across all Dapr documentation.