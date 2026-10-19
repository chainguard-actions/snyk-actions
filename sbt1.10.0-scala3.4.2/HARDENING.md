<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--sbt1.10.0-scala3.4.2/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--sbt1.10.0-scala3.4.2/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's `runs.image` references a mutable image tag (`docker://snyk/snyk:sbt1.10.0-scala3.4.2`) instead of an immutable SHA digest. If the image at this tag is replaced, the action will silently execute different code, enabling a supply-chain attack. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:21`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://snyk/snyk:sbt1.10.0-scala3.4.2` to the immutable digest `docker://snyk/snyk:sbt1.10.0-scala3.4.2@sha256:627230d43bf033532912b1c99e43ccc9737b80a0d58eada5cfac7677ecf5ee37`. The `docker://` scheme and tag are preserved inline.

