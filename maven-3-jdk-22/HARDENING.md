<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-22/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-22/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step 'Run Snyk scan' references a Docker image using a mutable tag (`docker://snyk/snyk:maven-3-jdk-22`) instead of an immutable SHA digest. This means the image can be silently replaced with a different (potentially malicious) version without any change to the action file, creating a supply-chain attack vector. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:27`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml line 27 from `docker://snyk/snyk:maven-3-jdk-22` to `docker://snyk/snyk:maven-3-jdk-22@sha256:ecf2d748da32d6e62c5a7667c17e8cc3850ab042c0e981ee8a95121d4440a6d6`. The `docker://` scheme is preserved, the tag is kept inline, and the digest was resolved via the Docker Registry API.

