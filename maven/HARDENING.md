<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:maven"`. Whoever controls that tag can change the image, which makes this a supply-chain risk. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # maven.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:maven@sha256:12c5cf575d64b4f44fd0b5ea8e59196d65c621d2d58f1370ed512034d0d05649. I left the Docker args unchanged on purpose: they reach the container as an argv array with no shell, so they can't be used for injection.

