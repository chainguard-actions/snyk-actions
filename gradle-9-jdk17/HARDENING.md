<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-9-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-9-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:gradle-9-jdk17"` uses the tag `gradle-9-jdk17`, which can be silently updated to point to a different (potentially malicious) image. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # gradle-9-jdk17"`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:gradle-9-jdk17` to `docker://snyk/snyk:gradle-9-jdk17@sha256:3088876b8ce24e7de022155c4341887ef6a363d1f49061d4d50736207fdc79d3`, preserving the docker:// scheme and the tag inline for readability.

