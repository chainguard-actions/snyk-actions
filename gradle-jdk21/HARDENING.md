<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite step uses a Docker image by mutable tag rather than a SHA digest: `uses: docker://snyk/snyk:gradle-jdk21`. Pin it to an image digest, e.g. docker://snyk/snyk@sha256:<digest> # gradle-jdk21.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk21 to @sha256:1af93c532fc8ff14935cb65719df5b4b9b70353cd23fe6ee8c262a579c8c4c39, keeping the tag inline. Left the args unchanged (it is a Docker args value with no shell).

