<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.9/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.9/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action image reference uses a mutable tag (`python-3.9`) instead of an immutable SHA digest. This means the action could silently pull a different (potentially malicious) image if the tag is moved. The reference `docker://snyk/snyk:python-3.9` should be replaced with a pinned digest such as `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:18`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:python-3.9` to `docker://snyk/snyk:python-3.9@sha256:842f01064a100edf2e15d95a07ab7a892eca1262003cd2aeb4e208a53743b502`. The `docker://` scheme and `:python-3.9` tag are preserved inline, with the immutable digest appended.

