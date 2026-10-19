<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--dotnet/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--dotnet/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step 'Run Snyk scan' references a Docker image using a mutable tag (`docker://snyk/snyk:dotnet`) instead of an immutable SHA digest. If the image at that tag is replaced, the action will silently execute different code, creating a supply-chain attack vector. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://snyk/snyk:dotnet` to the immutable digest `docker://snyk/snyk:dotnet@sha256:7daeb8909b5c9a8201fa2db417ef4e142957a3a7cbfcb3dff12b0736643e83f6`. The `docker://` scheme and `:dotnet` tag are preserved inline alongside the digest.

