<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk11/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk11/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

A composite action step points to a Docker image by a changeable tag instead of an @sha256 digest: `uses: docker://snyk/snyk:gradle-jdk11`. Anyone who controls that tag can change what the step runs, so it is a supply-chain risk. Pin it to an image digest.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk11 to @sha256:8672ee447e8dbc3d30232b95109dc77047dc47ec6e31a61c91acbcd054c6e234, keeping the docker:// scheme and the tag. I left the args unchanged: they go to the Docker container as an argv array, not through a shell.

