<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-20/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-20/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite step uses a Docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:maven-3-jdk-20`. Whoever controls that tag can change the image it points to, which is a supply-chain risk. Fix: pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # maven-3-jdk-20.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:maven-3-jdk-20 to @sha256:9a89d55cc45dedbef8aaf95b79f6e6da8815a73c5f9286f670d7acd1ea4bdf8b. The docker:// scheme and the tag stay inline. The args line is unchanged: it is passed to the container as an argument list and no shell runs it.

