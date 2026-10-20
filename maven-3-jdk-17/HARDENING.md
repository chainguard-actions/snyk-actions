<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action image in runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:maven-3-jdk-17"`. Pin it to a digest, for example docker://snyk/snyk@sha256:<digest> # maven-3-jdk-17.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:maven-3-jdk-17@sha256:d78502400dd63d8fa7e4e268e0b6728ffdd987c5e900da2b9eb5dfe05143ce20. Docker args left as upstream (not injectable).

