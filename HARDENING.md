<!-- markdownlint-disable -->

# Hardening Report: snyk--actions/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions/v1.0.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### script-injection (severity: high)

Sub-rule (a): The `run:` block in setup/action.yml directly interpolates `${{ github.action_path }}` inside shell commands. Line 26: `echo ${{ github.action_path }}` and line 28: `${{ github.action_path }}/setup_snyk.sh ...`. Any `${{ ... }}` expression interpolated directly into a `run:` shell script is a script-injection risk, as the value is substituted by the YAML template engine before the shell ever sees it, bypassing shell quoting.

Locations:

- `setup/action.yml:26`
- `setup/action.yml:28`

### unpinned-uses (severity: high)

Multiple action.yml files reference Docker images using mutable tags (e.g., `docker://snyk/snyk:node`, `docker://snyk/snyk:golang`, etc.) instead of immutable SHA digests. This makes the action vulnerable to supply-chain attacks if the upstream image tag is overwritten. Affected files with `image: "docker://snyk/snyk:<tag>"` (mutable tag, not a SHA digest): action.yml, cocoapods/action.yml, docker/action.yml, elixir-1.18/action.yml, golang/action.yml, gradle/action.yml, gradle-8-jdk17/action.yml, gradle-8-jdk21/action.yml, gradle-8-jdk24/action.yml, gradle-9-jdk17/action.yml, gradle-9-jdk21/action.yml, gradle-9-jdk24/action.yml, iac/action.yml, maven/action.yml, maven-3-jdk-11/action.yml, maven-3-jdk-17/action.yml, maven-3-jdk-21/action.yml, maven-3-jdk-24/action.yml, node/action.yml, php/action.yml, python/action.yml, python-3.10/action.yml, python-3.11/action.yml, python-3.12/action.yml, python-3.9/action.yml, ruby/action.yml, sbt1.10.0-scala3.4.2/action.yml. Affected files with `uses: docker://snyk/snyk:<tag>` (mutable tag): dotnet/action.yml, gradle-jdk11/action.yml, gradle-jdk12/action.yml, gradle-jdk14/action.yml, gradle-jdk16/action.yml, gradle-jdk17/action.yml, gradle-jdk21/action.yml, maven-3-jdk-20/action.yml, maven-3-jdk-22/action.yml, python-3.6/action.yml, python-3.7/action.yml, python-3.8/action.yml, scala/action.yml. All should be pinned to a full SHA digest.

Locations:

- `action.yml:19`
- `cocoapods/action.yml:19`
- `docker/action.yml:22`
- `elixir-1.18/action.yml:19`
- `golang/action.yml:19`
- `gradle/action.yml:19`
- `gradle-8-jdk17/action.yml:19`
- `gradle-8-jdk21/action.yml:19`
- `gradle-8-jdk24/action.yml:19`
- `gradle-9-jdk17/action.yml:19`
- `gradle-9-jdk21/action.yml:19`
- `gradle-9-jdk24/action.yml:19`
- `iac/action.yml:22`
- `maven/action.yml:19`
- `maven-3-jdk-11/action.yml:19`
- `maven-3-jdk-17/action.yml:19`
- `maven-3-jdk-21/action.yml:19`
- `maven-3-jdk-24/action.yml:19`
- `node/action.yml:19`
- `php/action.yml:19`
- `python/action.yml:19`
- `python-3.10/action.yml:19`
- `python-3.11/action.yml:19`
- `python-3.12/action.yml:19`
- `python-3.9/action.yml:19`
- `ruby/action.yml:19`
- `sbt1.10.0-scala3.4.2/action.yml:19`
- `dotnet/action.yml:26`
- `gradle-jdk11/action.yml:26`
- `gradle-jdk12/action.yml:26`
- `gradle-jdk14/action.yml:26`
- `gradle-jdk16/action.yml:26`
- `gradle-jdk17/action.yml:26`
- `gradle-jdk21/action.yml:26`
- `maven-3-jdk-20/action.yml:26`
- `maven-3-jdk-22/action.yml:26`
- `python-3.6/action.yml:26`
- `python-3.7/action.yml:26`
- `python-3.8/action.yml:26`
- `scala/action.yml:26`

## Iteration Notes

### Iteration 1

**Fixes applied:** script-injection, unpinned-uses

**Notes:**

Fixed script-injection in setup/action.yml by removing ${{ github.action_path }} expressions from the run block, replacing them with $GITHUB_ACTION_PATH env var. Fixed unpinned-uses by pinning all 40 Docker image references (snyk/snyk:*) across 40 action.yml files to their immutable SHA256 digests. Both 'image: docker://' style (27 files) and 'uses: docker://' style (13 files) were updated. The docker:// scheme is preserved in all pinned references.

