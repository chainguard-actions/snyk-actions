<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk14/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk14/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

action.yml uses a Docker image by mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:gradle-jdk14`. Whoever controls that tag can change the image without notice. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # gradle-jdk14.

Locations:

- `action.yml:27`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk14 to @sha256:55fdd8274733724310e2864aeb3ea34bca94ce0e7f5ae32eb13da2a6544ae65e, keeping the docker:// scheme and tag inline. Docker step args left unchanged (argv, not shell).

