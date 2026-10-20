<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image points to a mutable tag instead of a SHA256 digest: `image: "docker://snyk/snyk:maven-3-jdk-21"`. Anyone who controls that tag can change the image the action runs. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # maven-3-jdk-21.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:maven-3-jdk-21@sha256:c13fb3dd552c9b8eab682f4685eb004d54d64387cdb906b487d82d8a9e49c0a5. Left args unchanged: a Docker action's args are passed as an argv array, so they can't be injected.

