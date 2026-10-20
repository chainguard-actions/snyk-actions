<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.8/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.8/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

A composite action step references a Docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:python-3.8`. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # python-3.8.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:python-3.8 to docker://snyk/snyk:python-3.8@sha256:630d1028ae33184b08726c2de39c2058678a8722e7cdb685570887b0dd1782c2, keeping the docker:// scheme and the tag. The Docker step's args are unchanged, because the runner passes them to the container as an argv array and they are not open to shell injection.

