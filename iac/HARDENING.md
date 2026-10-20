<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--iac/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--iac/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

In action.yml, runs.image points to a mutable tag rather than a SHA digest: `image: "docker://snyk/snyk:alpine"`. It should be pinned to a digest, e.g. `docker://snyk/snyk@sha256:<digest> # alpine`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:alpine@sha256:c957e7b47e6e86a492d7809d2b8f510710f63a14c4970a2afda9cdba686f9d6c. The docker:// scheme and the tag stay inline. Docker args were left as upstream had them.

