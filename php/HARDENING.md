<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--php/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--php/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:php"` uses the tag `:php`, which can be silently replaced by a malicious image at any time, enabling a supply-chain attack. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # php"`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:php` to `docker://snyk/snyk:php@sha256:6ce1dbe995b7a95277513241042b51e14f1368941fbff9d7611c06fb2b7941d1`. The `docker://` scheme and `:php` tag are preserved inline, with the immutable digest appended to prevent supply-chain attacks.

