<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-24/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-24/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's `runs.image` references a mutable image tag (`docker://snyk/snyk:maven-3-jdk-24`) instead of an immutable SHA digest. If the image tag is overwritten (intentionally or via a supply-chain attack), the action will silently execute different code. It should be pinned to a specific SHA digest, e.g. `image: snyk/snyk@sha256:<64-hex-char-digest> # maven-3-jdk-24`.

Locations:

- `action.yml:18`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker container image in action.yml from the mutable tag `docker://snyk/snyk:maven-3-jdk-24` to the immutable digest `docker://snyk/snyk:maven-3-jdk-24@sha256:6d4046f8433eec1b1b9622df6c88670c713f11ceb2996748dca2fbbfce2c22ab`. The `docker://` scheme and `:maven-3-jdk-24` tag are preserved inline as required.

