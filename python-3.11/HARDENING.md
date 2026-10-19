<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.11/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.11/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag `docker://snyk/snyk:python-3.11` instead of an immutable SHA digest. This means the action could silently pull a different (potentially malicious) image if the tag is moved. The `image:` field should use a SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://snyk/snyk:python-3.11` to `docker://snyk/snyk:python-3.11@sha256:a4c57e00a5798b5ebef2517b892643088a5e8a6364fb318bad4e9f637d21167b`. The docker:// scheme and :python-3.11 tag are preserved inline, with the immutable digest appended.

