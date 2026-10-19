<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.6/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.6/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The step 'Run Snyk scan' uses a Docker image reference with a mutable tag (`docker://snyk/snyk:python-3.6`) instead of a SHA digest. This means the image can change at any time without notice, exposing the action to supply-chain attacks. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:27`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml line 27 from the mutable tag `docker://snyk/snyk:python-3.6` to the immutable digest `docker://snyk/snyk:python-3.6@sha256:21751180dfc6e17eac4afc90a0c270dfa5996ed7d0bbf43d8509db79f1b16507`. The `docker://` scheme and `:python-3.6` tag are preserved inline as required.

