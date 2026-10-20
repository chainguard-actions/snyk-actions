<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python-3.12/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python-3.12/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

Docker action runs.image uses a tag that can change instead of a SHA digest: `image: "docker://snyk/snyk:python-3.12"`. Pin it to an image digest, for example docker://snyk/snyk@sha256:<digest> # python-3.12.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:python-3.12@sha256:fe494a6023b2cee475eef32da971ea93944961e113af93101dab5b061364e42b. Left the Docker args unchanged.

