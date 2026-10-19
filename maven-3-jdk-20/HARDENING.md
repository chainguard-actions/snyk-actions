<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-20/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-20/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses a Docker image reference with a mutable tag (`maven-3-jdk-20`) instead of an immutable SHA digest. This means the image could be silently replaced with a malicious version without changing the workflow. The reference `docker://snyk/snyk:maven-3-jdk-20` should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:maven-3-jdk-20` to `docker://snyk/snyk:maven-3-jdk-20@sha256:9a89d55cc45dedbef8aaf95b79f6e6da8815a73c5f9286f670d7acd1ea4bdf8b`. The `docker://` scheme and the original tag are preserved inline, with the immutable SHA digest appended to prevent silent image replacement.

