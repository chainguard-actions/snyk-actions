<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of a SHA digest. `image: "docker://snyk/snyk:gradle-8-jdk17"` uses the tag `gradle-8-jdk17`, which can be silently updated to point to a different (potentially malicious) image. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # gradle-8-jdk17"`

Locations:

- `action.yml:21`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://snyk/snyk:gradle-8-jdk17` to the immutable digest `docker://snyk/snyk:gradle-8-jdk17@sha256:a9bb09a0a4fd4c00766e71d51a5d7a6cba44db185e92620628c40fc61ad21312`. The `docker://` scheme is preserved as required for Docker container actions, and the tag is kept inline alongside the digest for readability.

