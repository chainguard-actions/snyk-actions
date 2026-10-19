<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk14/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk14/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses a Docker image reference with a mutable tag (`docker://snyk/snyk:gradle-jdk14`) instead of an immutable SHA digest. This means the image could be silently replaced with a malicious version without any change to the action file, creating a supply-chain attack vector. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml line 26 from `docker://snyk/snyk:gradle-jdk14` to `docker://snyk/snyk:gradle-jdk14@sha256:55fdd8274733724310e2864aeb3ea34bca94ce0e7f5ae32eb13da2a6544ae65e`. The `docker://` scheme is preserved as required for composite action Docker steps, the tag is kept inline for readability, and the SHA256 digest makes the reference immutable.

