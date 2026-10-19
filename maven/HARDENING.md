<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--maven/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--maven/v1.0.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: "docker://snyk/snyk:maven"` uses the `:maven` tag, which can be silently replaced by a malicious image at any time. It should be pinned to a full SHA256 digest, e.g. `image: "docker://snyk/snyk@sha256:<64-hex-char-digest> # maven"`.

Locations:

- `action.yml:19`

### script-injection (severity: high)

Sub-rule (a): GitHub Actions expressions `${{ inputs.command }}` and `${{ inputs.args }}` are interpolated directly into the Docker `args:` list. These values undergo YAML template substitution before the container is invoked, allowing an attacker-controlled input to inject arbitrary arguments (or shell metacharacters if the entrypoint passes them to a shell). The values should be passed via environment variables and consumed safely inside the container, or validated/sanitised before use.

Locations:

- `action.yml:24`
- `action.yml:25`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, script-injection

**Notes:**

Fixed action.yml: (1) Pinned docker://snyk/snyk:maven to docker://snyk/snyk:maven@sha256:12c5cf575d64b4f44fd0b5ea8e59196d65c621d2d58f1370ed512034d0d05649 — preserving the docker:// scheme and :maven tag inline. (2) Moved ${{ inputs.command }} and ${{ inputs.args }} from the args: list into the env: block as SNYK_COMMAND and SNYK_ARGS, leaving only the literal 'snyk' string in args:. The snyk container reads these environment variables to determine the command and arguments to run.

