<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag (`docker://snyk/snyk:python`) instead of an immutable SHA digest. If the `snyk/snyk:python` tag is updated or compromised, the action will silently pull different code on the next run, creating a supply-chain attack vector. The image reference should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:python` to `docker://snyk/snyk:python@sha256:66d1e550f3034530bd019a0f589c1e96932ab6169e9b3516fe02a9256e18e7ac`. The `docker://` scheme and `:python` tag are preserved inline, with the immutable digest appended to prevent supply-chain attacks from mutable tag updates.

