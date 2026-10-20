<!-- markdownlint-disable -->

# Hardening Report: snyk--actions/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions/v1.0.0** was hardened automatically. 6 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### script-injection (severity: high)

Sub-rule (a): a GitHub expression is placed straight into a run: script in setup/action.yml. Offending lines: `echo ${{ github.action_path }}` and `${{ github.action_path }}/setup_snyk.sh "${INPUT_SNYK_VERSION}" "${INPUT_OS}" || ...`. Use the quoted env var "$GITHUB_ACTION_PATH" instead.

Locations:

- `setup/action.yml:24`
- `setup/action.yml:26`

### unpinned-uses (severity: high)

The Docker action image uses a mutable tag instead of a sha256 digest: `image: "docker://snyk/snyk:node"`.

Locations:

- `action.yml:20`

### unpinned-uses (severity: high)

The Docker action image uses a mutable tag instead of a sha256 digest: `image: "docker://snyk/snyk:docker"`.

Locations:

- `docker/action.yml:22`

### unpinned-uses (severity: high)

The Docker action image uses a mutable tag instead of a sha256 digest: `image: "docker://snyk/snyk:alpine"`.

Locations:

- `iac/action.yml:22`

### unpinned-uses (severity: high)

A composite step pulls a Docker image by mutable tag: `uses: docker://snyk/snyk:dotnet`. Every other composite variant generated from the same template does the same, each with its own tag: gradle-jdk11/12/14/16/17/21, maven-3-jdk-20, maven-3-jdk-22, python-3.6/3.7/3.8 and scala.

Locations:

- `dotnet/action.yml:23`
- `gradle-jdk11/action.yml:23`
- `gradle-jdk12/action.yml:23`
- `gradle-jdk14/action.yml:23`
- `gradle-jdk16/action.yml:23`
- `gradle-jdk17/action.yml:23`
- `gradle-jdk21/action.yml:23`
- `maven-3-jdk-20/action.yml:23`
- `maven-3-jdk-22/action.yml:23`
- `python-3.6/action.yml:23`
- `python-3.7/action.yml:23`
- `python-3.8/action.yml:23`
- `scala/action.yml:23`

### unpinned-uses (severity: high)

The Docker-based variant actions set runs.image to a mutable tag such as docker://snyk/snyk:<variant> instead of a sha256 digest. This applies to cocoapods, elixir-1.18, golang, gradle, gradle-8-jdk17/21/24, gradle-9-jdk17/21/24, maven, maven-3-jdk-11/17/21/24, node, php, python, python-3.9/3.10/3.11/3.12, ruby and sbt1.10.0-scala3.4.2.

Locations:

- `cocoapods/action.yml:20`
- `elixir-1.18/action.yml:20`
- `golang/action.yml:20`
- `gradle/action.yml:20`
- `gradle-8-jdk17/action.yml:20`
- `gradle-8-jdk21/action.yml:20`
- `gradle-8-jdk24/action.yml:20`
- `gradle-9-jdk17/action.yml:20`
- `gradle-9-jdk21/action.yml:20`
- `gradle-9-jdk24/action.yml:20`
- `maven/action.yml:20`
- `maven-3-jdk-11/action.yml:20`
- `maven-3-jdk-17/action.yml:20`
- `maven-3-jdk-21/action.yml:20`
- `maven-3-jdk-24/action.yml:20`
- `node/action.yml:20`
- `php/action.yml:20`
- `python/action.yml:20`
- `python-3.9/action.yml:20`
- `python-3.10/action.yml:20`
- `python-3.11/action.yml:20`
- `python-3.12/action.yml:20`
- `ruby/action.yml:20`
- `sbt1.10.0-scala3.4.2/action.yml:20`

## Iteration Notes

### Iteration 1

**Fixes applied:** script-injection, unpinned-uses

**Notes:**

script-injection: in setup/action.yml, the two `${{ github.action_path }}` uses in the run script are now the quoted "$GITHUB_ACTION_PATH". That made upstream's duplicate `echo` and the `|| $GITHUB_ACTION_PATH/setup_snyk.sh` fallback redundant, so I removed them. The script still gets the same two inputs, quoted the same way.

unpinned-uses: all 40 snyk/snyk image references (38 different tags) are now pinned as docker://snyk/snyk:<tag>@sha256:<digest>, keeping the docker:// scheme and the tag. The digests came from lookup_container_digest. This covers runs.image in the Docker actions (root, node, docker, iac/alpine, cocoapods, elixir, golang, gradle*, maven*, php, python*, ruby, sbt) and the composite step `uses:` in dotnet, gradle-jdk11/12/14/16/17/21, maven-3-jdk-20/22, python-3.6/3.7/3.8 and scala. A search afterwards found no unpinned snyk/snyk references left.

I did not change the Docker args (`${{ inputs.command }}`, `${{ inputs.args }}`). They reach the container as an argument list with no shell, so they can't be used for injection.

The pinned files carry a 'generated, do not edit' header, so the next run of build.rb will overwrite them with the unpinned tags unless the template (_templates/action.yml.erb) is changed to match. I didn't touch the template.

