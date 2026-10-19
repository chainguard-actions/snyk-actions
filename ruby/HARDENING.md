<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--ruby/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--ruby/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action image reference uses a mutable tag (`:ruby`) instead of an immutable SHA digest. This means the image can be silently replaced with a different (potentially malicious) version without any change to the action file, creating a supply-chain attack risk. The reference `docker://snyk/snyk:ruby` should be replaced with a pinned digest such as `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:22`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker container image reference in action.yml from `docker://snyk/snyk:ruby` to `docker://snyk/snyk:ruby@sha256:3fa3de8d6339c1d6d53fabfbfa45cab2df45e37a97a74ffc45f2731668c5424c`. The docker:// scheme and :ruby tag are preserved inline, with the immutable digest appended.

