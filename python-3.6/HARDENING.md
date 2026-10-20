<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.6/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.6/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

A composite step in action.yml points to a mutable Docker image tag instead of a SHA256 digest: `uses: docker://snyk/snyk:python-3.6`. If someone changes what that tag points to, a different image would run. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # python-3.6.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:python-3.6 to @sha256:21751180dfc6e17eac4afc90a0c270dfa5996ed7d0bbf43d8509db79f1b16507 in action.yml, keeping the docker:// scheme and the tag in the reference. The args for the docker step are unchanged: they go to the container as an argv array, so they can't be used for script injection.

