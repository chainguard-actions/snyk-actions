<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.10/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.10/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action points runs.image at a mutable tag instead of a sha256 digest: `image: "docker://snyk/snyk:python-3.10"`. Whoever controls that tag can change the image the action runs. Pin it as snyk/snyk@sha256:<digest> # python-3.10.

Locations:

- `action.yml:19`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:python-3.10@sha256:b78b2ad6648c05b330cb9ede1b3208decd4c8e304ca055ea0001d10ff7cf7eee. Docker args left unchanged (argv, not shell-injectable).

