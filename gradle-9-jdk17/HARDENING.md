<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-9-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-9-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action points to a mutable image tag instead of a SHA digest: `image: "docker://snyk/snyk:gradle-9-jdk17"`. Fix it by pinning to a digest, e.g. `docker://snyk/snyk@sha256:<digest> # gradle-9-jdk17`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-9-jdk17@sha256:3088876b8ce24e7de022155c4341887ef6a363d1f49061d4d50736207fdc79d3. Docker args were left as they were.

