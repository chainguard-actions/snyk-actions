<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image points to a mutable tag, not a SHA digest: `image: "docker://snyk/snyk:gradle"`. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # gradle.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle@sha256:4dcae977a00da15f9b4bd7275d5dc883eb2c760c0510228c834b54160c3d9162. Docker args left unchanged (argv, not injectable).

