<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-9-jdk21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-9-jdk21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action image is referenced by a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:gradle-9-jdk21"`. Whoever controls that tag can change the image, which makes this a supply-chain risk. Pin it to a digest, e.g. `docker://snyk/snyk@sha256:<digest> # gradle-9-jdk21`.

Locations:

- `action.yml:19`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-9-jdk21@sha256:f3157423d40a6d84181f45d5c93e055b59f4e2d7aa987071a12eba2013bc341f. Docker args left unchanged.

