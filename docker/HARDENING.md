<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--docker/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--docker/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action image is referenced by a tag that can change (`image: "docker://snyk/snyk:docker"`) instead of an immutable SHA256 digest. If the tag is moved to a different image, every caller runs that image, which is a supply-chain risk. Pin it with @sha256:<digest>.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:docker@sha256:d6595337edef7ce37eded247b8bb47ebb60681fd802c49e64c1b80b3a6963187. Docker args left unchanged.

