<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk16/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk16/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step 'Run Snyk scan' references a Docker image using a mutable tag (`docker://snyk/snyk:gradle-jdk16`) rather than an immutable SHA digest. This means the image can be silently replaced with a different (potentially malicious) version without any change to the action file, creating a supply-chain attack risk. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest> # gradle-jdk16`.

Locations:

- `action.yml:27`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-jdk16` to `docker://snyk/snyk:gradle-jdk16@sha256:d32fdb0ff7a50f742c0744714a1df3c189b3f3336cd378b0cf190581a39ceee7`. The `docker://` scheme is preserved and the tag is kept inline alongside the digest.

