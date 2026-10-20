<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--python/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--python/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:python"`. Pin it to an image digest (snyk/snyk@sha256:<digest> # python).

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:python@sha256:66d1e550f3034530bd019a0f589c1e96932ab6169e9b3516fe02a9256e18e7ac. I left the Docker args (the inputs.command and inputs.args expressions) as upstream wrote them. The runner passes them to the container as separate arguments without going through a shell, so they can't be used for injection.

