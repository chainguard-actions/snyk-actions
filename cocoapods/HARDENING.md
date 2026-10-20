<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--cocoapods/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--cocoapods/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action's runs.image uses a mutable tag instead of a SHA digest: `image: "docker://snyk/snyk:cocoapods"`. Pin it to a digest, e.g. docker://snyk/snyk@sha256:<digest> # cocoapods.

Locations:

- `action.yml:19`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://snyk/snyk:cocoapods@sha256:fa284ecf5b0048c55b6bc5c805d76aa3fcdc0781a31a5630b41076f740f13225. Docker args left unchanged (argv, not shell).

