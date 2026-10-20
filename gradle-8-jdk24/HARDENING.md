<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk24/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk24/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image points to a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:gradle-8-jdk24"`. Pin it to an immutable digest, e.g. `docker://snyk/snyk@sha256:<digest> # gradle-8-jdk24`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-8-jdk24@sha256:c2e8dcc68345d53d5ecedc5f077704fbc1e779d98b3c4b5a57d5a93e63e49fa1. Left the Docker args as they were, because args are passed without a shell and can't be injected.

