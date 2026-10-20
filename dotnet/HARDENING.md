<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--dotnet/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--dotnet/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The composite step points to a Docker image by a tag that can change instead of a sha256 digest: `uses: docker://snyk/snyk:dotnet`. Pin it to a digest, e.g. `docker://snyk/snyk@sha256:<digest> # dotnet`.

Locations:

- `action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the image in action.yml from docker://snyk/snyk:dotnet to docker://snyk/snyk:dotnet@sha256:7daeb8909b5c9a8201fa2db417ef4e142957a3a7cbfcb3dff12b0736643e83f6. I kept the docker:// scheme and the tag in the reference. I left the with.args unchanged on purpose: they go to the container as argv, so they can't be used for shell injection.

