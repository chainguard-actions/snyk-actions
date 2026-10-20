<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--node/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--node/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action points to its image by a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:node"`. Pin it with a digest instead, e.g. docker://snyk/snyk@sha256:<digest> # node.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:node@sha256:99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3. Docker args left unchanged (no shell, not injectable).

