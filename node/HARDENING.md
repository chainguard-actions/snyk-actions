<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--node/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--node/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 4 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag `docker://snyk/snyk:node` instead of a SHA digest. This means the image pulled at runtime can change without notice, enabling supply-chain attacks. It should be pinned to a specific SHA digest, e.g. `docker://snyk/snyk@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag 'docker://snyk/snyk:node' to the immutable digest 'docker://snyk/snyk:node@sha256:99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3'. The docker:// scheme and :node tag are preserved inline as required.

### Iteration 2

**Fixes applied:** unpinned-uses

**Notes:**

Verified the Docker image reference for snyk/snyk:node against the registry. The registry returned digest sha256:99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3 (64 hex characters), which is the authoritative pinned digest. The image reference in action.yml uses the correct docker:// scheme, preserves the :node tag, and includes the full @sha256: digest, making it properly pinned against supply-chain attacks.

### Iteration 3

**Fixes applied:** unpinned-uses

**Notes:**

The Docker image reference in action.yml at line 22 already contains the correct pinned digest as confirmed by the Docker registry lookup for snyk/snyk:node. The digest `sha256:99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3` is 64 hex characters (8 groups of 8: 99c7a73c, 210893d3, b73845e6, 3c5827d2, 42635bd6, b5041fd1, 867531a7, 85c2c6d3). The registry API confirmed this is the correct digest for the snyk/snyk:node image. The reference format `docker://snyk/snyk:node@sha256:<digest>` is correct per the pinning guidelines (docker:// scheme preserved, tag retained inline, digest appended). The finding's claim of 63 characters appears to be a miscounting error. No changes were needed beyond confirming the existing pinned reference is correct.

### Iteration 4

**Fixes applied:** unpinned-uses

**Notes:**

The finding claimed the SHA256 digest in action.yml was only 63 hex characters long. Investigation revealed the digest `99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3` is actually 64 characters (confirmed by regex match returning length 71 = 7 for 'sha256:' + 64 hex chars). The Docker registry lookup for `snyk/snyk:node` returned the exact same digest, confirming it is valid and correct. The image reference `docker://snyk/snyk:node@sha256:99c7a73c210893d3b73845e63c5827d242635bd6b5041fd1867531a785c2c6d3` is already properly pinned with the full 64-character digest and the `docker://` scheme preserved. No changes were needed.

