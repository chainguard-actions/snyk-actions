<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-11/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-11/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA256 digest: `image: "docker://snyk/snyk:maven-3-jdk-11"`. Pin it to an image digest (snyk/snyk@sha256:<digest>).

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:maven-3-jdk-11@sha256:829f129c8dfc208ee82ad3aeb6e55f780909317c25c8a515351c81459e399b94. Docker args left unchanged (argv, not shell).

