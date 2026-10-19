<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven-3-jdk-21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven-3-jdk-21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag `docker://snyk/snyk:maven-3-jdk-21` instead of an immutable SHA digest. This means the image can be silently replaced with a different (potentially malicious) version without any change to the action definition. It should be pinned to a specific SHA digest, e.g. `image: docker://snyk/snyk@sha256:<64-hex-char-digest> # maven-3-jdk-21`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker container image in action.yml from the mutable tag `docker://snyk/snyk:maven-3-jdk-21` to the immutable digest `docker://snyk/snyk:maven-3-jdk-21@sha256:c13fb3dd552c9b8eab682f4685eb004d54d64387cdb906b487d82d8a9e49c0a5`. The `docker://` scheme and `:maven-3-jdk-21` tag are preserved inline, with the SHA digest appended.

