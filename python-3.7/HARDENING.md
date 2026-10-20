<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.7/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.7/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite step 'Run Snyk scan' points at a mutable Docker image tag instead of a sha256 digest: `uses: docker://snyk/snyk:python-3.7`. Whoever controls that tag can change the image at any time, so the code that runs can change without notice (a supply-chain risk). Pin it to the digest, e.g. docker://snyk/snyk@sha256:<digest> # python-3.7.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:python-3.7 to @sha256:ef7933377ef62ae3c4a8301be6901a7f9d82f78376496f8834c8afee8d8ba563, keeping the tag inline and the docker:// scheme. Docker args left unchanged (argv, not shell).

