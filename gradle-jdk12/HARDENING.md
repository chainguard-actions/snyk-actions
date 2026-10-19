<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk12/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk12/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step uses `docker://snyk/snyk:gradle-jdk12`, which references a mutable Docker image tag (`:gradle-jdk12`) rather than an immutable SHA digest (e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`). If the upstream image is replaced or compromised, the action will silently execute the new, potentially malicious image. Pin the reference to a specific SHA256 digest to prevent supply-chain attacks.

Locations:

- `action.yml:27`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml line 27 from `docker://snyk/snyk:gradle-jdk12` to `docker://snyk/snyk:gradle-jdk12@sha256:3778c5a885c6cffa0e20bc25ebcb0229a0708365cab597ff3ff4525ff9fecc4c`. The `docker://` scheme and `:gradle-jdk12` tag are preserved inline, with the immutable digest appended to prevent supply-chain attacks from mutable tag references.

