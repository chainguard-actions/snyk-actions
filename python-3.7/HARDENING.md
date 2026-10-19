<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.7/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.7/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step references a Docker image using a mutable tag (`docker://snyk/snyk:python-3.7`) instead of an immutable SHA digest. This means the image can be silently replaced with a different (potentially malicious) version, creating a supply-chain risk. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:python-3.7` to `docker://snyk/snyk:python-3.7@sha256:ef7933377ef62ae3c4a8301be6901a7f9d82f78376496f8834c8afee8d8ba563`. The `docker://` scheme and tag are preserved inline, with the immutable SHA digest appended to prevent supply-chain attacks via mutable tag replacement.

