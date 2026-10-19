<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.10/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.10/v1.0.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:python-3.10"` uses the tag `python-3.10`, which can be silently updated to point to a different (potentially malicious) image. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # python-3.10"`.

Locations:

- `action.yml:22`

### script-injection (severity: high)

Sub-rule (a): GitHub Actions expressions `${{ inputs.command }}` and `${{ inputs.args }}` are interpolated directly into the Docker `args:` list. The Actions runner performs YAML template substitution on these values before passing them to the container, so a calling workflow can supply arbitrary content (including shell metacharacters or command separators) without any quoting or sanitization. These inputs should be passed via environment variables and referenced safely inside the container entrypoint, or validated/sanitized before use.

Locations:

- `action.yml:28`
- `action.yml:29`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, script-injection

**Notes:**

1. Pinned Docker image from `docker://snyk/snyk:python-3.10` to `docker://snyk/snyk:python-3.10@sha256:b78b2ad6648c05b330cb9ede1b3208decd4c8e304ca055ea0001d10ff7cf7eee` (preserving the tag inline alongside the digest). 2. Moved `${{ inputs.command }}` and `${{ inputs.args }}` out of the `args:` list into the `env:` block as `SNYK_COMMAND` and `SNYK_ARGS` environment variables. The `args:` list now only contains the fixed literal `snyk`, preventing script injection via user-controlled input interpolation in the Docker args.

