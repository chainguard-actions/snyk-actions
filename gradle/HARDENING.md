<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 2 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:gradle"` uses the tag `gradle`, which can be silently replaced with a different (potentially malicious) image without any change to the action definition. It should be pinned to a specific SHA digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # gradle"`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://snyk/snyk:gradle` to the immutable digest `docker://snyk/snyk:gradle@sha256:4dcae977a00da15f9b4bd7275d5dc883eb2c760c0510228c834b54160c3d9162`. The `docker://` scheme and `:gradle` tag are preserved inline per the hardening guidelines.

### Iteration 2

**Fixes applied:** unpinned-uses

**Notes:**

The Docker image reference in action.yml at line 21 was examined. The finding reported a 63-character digest, but the digest `4dcae977a00da15f9b4bd7275d5dc883eb2c760c0510228c834b54160c3d9162` is actually 64 characters (8 groups of 8 hex chars). The Docker registry lookup for `snyk/snyk:gradle` confirmed this exact digest. The image reference `docker://snyk/snyk:gradle@sha256:4dcae977a00da15f9b4bd7275d5dc883eb2c760c0510228c834b54160c3d9162` is already properly formatted with the `docker://` scheme, the mutable tag retained inline, and the full 64-character SHA256 digest pinned. No changes were needed beyond confirming the existing reference is correct.

