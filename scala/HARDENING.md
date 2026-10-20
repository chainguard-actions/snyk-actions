<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--scala/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--scala/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step 'Run Snyk scan' refers to a Docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:scala`. Whoever controls the tag can change the image the action runs. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # scala.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the image in the 'Run Snyk scan' step to docker://snyk/snyk:scala@sha256:6cfcd63270b316192bb9fc2b339b1090bac2cdb13dccf6aa776183e46c2700d1, keeping the docker:// scheme and the tag. I got the digest from a registry lookup. I left the with.args unchanged on purpose: the container receives them as an argv array, not through a shell.

