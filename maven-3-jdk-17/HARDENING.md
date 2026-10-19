<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references the image `docker://snyk/snyk:maven-3-jdk-17` using a mutable tag (`maven-3-jdk-17`) rather than an immutable SHA digest. This means the image pulled at runtime could change without notice, enabling a supply-chain attack. The image reference should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest> # maven-3-jdk-17`.

Locations:

- `action.yml:17`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://snyk/snyk:maven-3-jdk-17` to the immutable digest `docker://snyk/snyk:maven-3-jdk-17@sha256:d78502400dd63d8fa7e4e268e0b6728ffdd987c5e900da2b9eb5dfe05143ce20`. The `docker://` scheme and tag are preserved inline as required.

