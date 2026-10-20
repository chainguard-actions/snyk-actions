<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--ruby/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--ruby/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:ruby"`. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # ruby.

Locations:

- `action.yml:19`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:ruby@sha256:3fa3de8d6339c1d6d53fabfbfa45cab2df45e37a97a74ffc45f2731668c5424c. Docker args were left unchanged, since they are passed as argv and not run through a shell.

