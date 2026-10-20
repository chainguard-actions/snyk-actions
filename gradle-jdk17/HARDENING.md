<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--gradle-jdk17/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--gradle-jdk17/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

A composite action step references a docker image by a mutable tag instead of a sha256 digest: `uses: docker://snyk/snyk:gradle-jdk17`. If that tag is re-pushed, different code could run without anyone noticing. Pin it to a digest, e.g. `docker://snyk/snyk@sha256:<digest> # gradle-jdk17`.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned docker://snyk/snyk:gradle-jdk17 to @sha256:afedfd945ee374f2d19cbec1f97d2f4532f1cbb52388bb46b29b11dfb0d46727. The tag stays inline and the docker:// scheme is kept. Args were left as upstream wrote them: Docker action args are passed as an argv array, so they can't be injected.

