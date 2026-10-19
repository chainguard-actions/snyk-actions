<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--iac/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--iac/v1.0.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

action.yml uses a Docker image referenced by a mutable tag rather than a SHA digest: `image: "docker://snyk/snyk:alpine"`. A tag like `:alpine` can be silently overwritten, enabling a supply-chain attack. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:22`

### unpinned-uses (severity: high)

example.yml contains three unpinned `uses:` references that use mutable tags or branch names instead of full 40-character commit SHAs: (1) `actions/checkout@v2` (line 14) — mutable version tag; (2) `snyk/actions/iac@master` (line 19) — mutable branch name, highest risk; (3) `github/codeql-action/upload-sarif@v2` (line 31) — mutable version tag. All should be pinned to a full commit SHA.

Locations:

- `example.yml:14`
- `example.yml:19`
- `example.yml:31`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Fixed all unpinned references: (1) Pinned Docker image in action.yml from `docker://snyk/snyk:alpine` to `docker://snyk/snyk:alpine@sha256:c957e7b47e6e86a492d7809d2b8f510710f63a14c4970a2afda9cdba686f9d6c`, preserving the docker:// scheme and :alpine tag inline. (2) Pinned three unpinned uses: references in example.yml — actions/checkout@v2, snyk/actions/iac@master, and github/codeql-action/upload-sarif@v2 — all replaced with full 40-character commit SHAs with original tags preserved as comments.

