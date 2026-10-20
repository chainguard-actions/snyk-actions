<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk16/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk16/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite step 'Run Snyk scan' uses a mutable Docker image tag instead of a sha256 digest: `uses: docker://snyk/snyk:gradle-jdk16`. Pin it to an image digest, e.g. docker://snyk/snyk@sha256:<digest> # gradle-jdk16.

Locations:

- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk16 to @sha256:d32fdb0ff7a50f742c0744714a1df3c189b3f3336cd378b0cf190581a39ceee7, keeping the docker:// scheme and the tag inline. Did not change with.args: it is passed to the docker container as argv, not run through a shell.

