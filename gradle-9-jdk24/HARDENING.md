<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-9-jdk24/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-9-jdk24/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:gradle-9-jdk24"`. Pin it to an image digest (e.g. docker://snyk/snyk@sha256:<digest> # gradle-9-jdk24).

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-9-jdk24@sha256:7048283c678bc6d6d3e07a9833d0d02317f3de18623c1a9586a9f0ee88c18844. Docker args left unchanged (argv, not injectable).

