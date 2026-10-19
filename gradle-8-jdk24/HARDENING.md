<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk24/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk24/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's `runs.image:` references a mutable image tag (`docker://snyk/snyk:gradle-8-jdk24`) instead of an immutable SHA digest. A tag can be silently updated to point to a different (potentially malicious) image, making the action vulnerable to supply-chain attacks. It should be pinned to a specific SHA digest, e.g. `image: snyk/snyk@sha256:<64-hex-char-digest> # gradle-8-jdk24`.

Locations:

- `action.yml:21`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-8-jdk24` to `docker://snyk/snyk:gradle-8-jdk24@sha256:c2e8dcc68345d53d5ecedc5f077704fbc1e779d98b3c4b5a57d5a93e63e49fa1`, preserving the docker:// scheme and tag inline as required.

