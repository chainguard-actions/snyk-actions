<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk12/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk12/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite action step pulls a Docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:gradle-jdk12`. Pin it to an image digest, e.g. docker://snyk/snyk@sha256:<digest> # gradle-jdk12.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk12 to @sha256:3778c5a885c6cffa0e20bc25ebcb0229a0708365cab597ff3ff4525ff9fecc4c, keeping the tag inline. Left the docker step's args alone because they go to the container as an argv array, not through a shell.

