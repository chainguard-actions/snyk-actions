<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--php/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--php/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses the mutable tag 'docker://snyk/snyk:php' instead of a SHA256 digest. Whoever controls that tag could change the image and run different code (a supply-chain risk). Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # php.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:php@sha256:6ce1dbe995b7a95277513241042b51e14f1368941fbff9d7611c06fb2b7941d1. Docker args left unchanged (argv, not injectable).

