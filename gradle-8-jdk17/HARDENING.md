<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image points to a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:gradle-8-jdk17"`. Pin it with an @sha256:<digest> reference.

Locations:

- `action.yml:19`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-8-jdk17@sha256:a9bb09a0a4fd4c00766e71d51a5d7a6cba44db185e92620628c40fc61ad21312. Docker args left unchanged, since args are passed to the container as a list and no shell reads them.

