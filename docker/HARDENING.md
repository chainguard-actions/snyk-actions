<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--docker/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--docker/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of a SHA digest. `image: "docker://snyk/snyk:docker"` uses the tag `:docker`, which can be silently replaced with a different (potentially malicious) image at any time. It should be pinned to a specific SHA256 digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # docker"`.

Locations:

- `action.yml:21`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the mutable snyk/snyk:docker image tag to its SHA256 digest in hardened/action/action.yml. Changed `image: "docker://snyk/snyk:docker"` to `image: "docker://snyk/snyk:docker@sha256:d6595337edef7ce37eded247b8bb47ebb60681fd802c49e64c1b80b3a6963187"`. The docker:// scheme and :docker tag are preserved inline with the digest appended.

