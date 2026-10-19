<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--elixir-1.18/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--elixir-1.18/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:elixir-1.18"` uses the tag `elixir-1.18`, which can be silently updated to point to a different (potentially malicious) image at any time. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # elixir-1.18"`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:elixir-1.18` to `docker://snyk/snyk:elixir-1.18@sha256:5fa0fc28aacff98d52a40295bfe289fdf040d3d7b04d984fcf7a3ded563cad4c`. The `docker://` scheme is preserved to ensure GitHub Actions correctly interprets this as a pre-built Docker image rather than a local Dockerfile path.

