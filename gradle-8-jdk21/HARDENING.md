<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-8-jdk21/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-8-jdk21/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image points to a tag that can change, not a SHA256 digest: `image: "docker://snyk/snyk:gradle-8-jdk21"`. Pin it to an immutable digest, for example docker://snyk/snyk@sha256:<digest> # gradle-8-jdk21.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:gradle-8-jdk21@sha256:41a4f53e047004cbd12d19b52b67c3a32f4fa1c8196324f58da85d7dcbe3c05a. I left the args unchanged on purpose: in a Docker action they reach the container as an argv array, not through a shell.

