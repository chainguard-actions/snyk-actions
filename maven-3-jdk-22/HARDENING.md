<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-22/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-22/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

A composite action step refers to a Docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:maven-3-jdk-22`. If someone re-pushes that tag, the action will pull and run a different image. Pin it as docker://snyk/snyk@sha256:<digest> # maven-3-jdk-22.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Snyk scan step's image in action.yml to docker://snyk/snyk:maven-3-jdk-22@sha256:ecf2d748da32d6e62c5a7667c17e8cc3850ab042c0e981ee8a95121d4440a6d6. The docker:// prefix and the tag are still in the line, and the digest comes from the registry. I left the args alone because the runner passes them to the container directly and no shell parses them.

