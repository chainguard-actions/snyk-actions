<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses a Docker image reference with a mutable tag (`docker://snyk/snyk:gradle-jdk17`) instead of a SHA digest. A mutable tag can be silently updated to point to a different (potentially malicious) image, enabling supply-chain attacks. The reference should be pinned to an immutable SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference `docker://snyk/snyk:gradle-jdk17` to the immutable SHA digest `docker://snyk/snyk:gradle-jdk17@sha256:afedfd945ee374f2d19cbec1f97d2f4532f1cbb52388bb46b29b11dfb0d46727` in action.yml line 28. The `docker://` scheme and tag are preserved inline per the hardening guidelines.

