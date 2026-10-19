<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses a Docker image reference with a mutable tag (`docker://snyk/snyk:gradle-jdk21`) instead of a SHA digest. This means the image can be silently replaced with a different (potentially malicious) version without any change to the action file, creating a supply-chain risk. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-jdk21` to `docker://snyk/snyk:gradle-jdk21@sha256:1af93c532fc8ff14935cb65719df5b4b9b70353cd23fe6ee8c262a579c8c4c39`. The `docker://` scheme is preserved, the mutable tag is kept inline for readability, and the immutable SHA digest is appended to prevent supply-chain attacks.

