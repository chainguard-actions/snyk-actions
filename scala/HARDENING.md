<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--scala/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--scala/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step 'Run Snyk scan' uses `uses: docker://snyk/snyk:scala`, which references a mutable Docker image tag (`:scala`) rather than an immutable SHA digest. This means the image could be silently replaced with a malicious version without any change to the action file, creating a supply-chain attack risk. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:25`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml line 25 from `docker://snyk/snyk:scala` to `docker://snyk/snyk:scala@sha256:6cfcd63270b316192bb9fc2b339b1090bac2cdb13dccf6aa776183e46c2700d1`. The `docker://` scheme and `:scala` tag are preserved inline, with the immutable digest appended to prevent supply-chain attacks via mutable tag replacement.

