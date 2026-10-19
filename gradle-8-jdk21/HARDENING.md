<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's `runs.image:` field references `docker://snyk/snyk:gradle-8-jdk21`, which uses a mutable image tag (`gradle-8-jdk21`) instead of a SHA digest. A mutable tag can be silently updated to point to a different (potentially malicious) image, creating a supply-chain attack vector. It should be pinned to an immutable SHA digest, e.g. `image: docker://snyk/snyk@sha256:<64-hex-char-digest> # gradle-8-jdk21`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-8-jdk21` to `docker://snyk/snyk:gradle-8-jdk21@sha256:41a4f53e047004cbd12d19b52b67c3a32f4fa1c8196324f58da85d7dcbe3c05a`. The docker:// scheme and tag are preserved inline alongside the immutable digest.

