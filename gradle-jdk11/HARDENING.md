<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk11/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk11/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses a Docker image reference with a mutable tag (`docker://snyk/snyk:gradle-jdk11`) instead of a SHA digest. This means the image can be silently replaced with a different (potentially malicious) version, creating a supply-chain risk. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-jdk11` to `docker://snyk/snyk:gradle-jdk11@sha256:8672ee447e8dbc3d30232b95109dc77047dc47ec6e31a61c91acbcd054c6e234`. The `docker://` scheme and `:gradle-jdk11` tag are preserved inline, with the immutable SHA256 digest appended to prevent supply-chain attacks via mutable tag replacement.

