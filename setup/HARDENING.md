<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--setup/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--setup/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### script-injection (severity: high)

Sub-rule (a): the run block in action.yml's first composite step puts a GitHub Actions expression straight into the shell script. The offending lines are `echo ${{ github.action_path }}` (line 26) and `${{ github.action_path }}/setup_snyk.sh "${INPUT_SNYK_VERSION}" "${INPUT_OS}" || ...` (line 28). Use the quoted environment variable "$GITHUB_ACTION_PATH" instead, for example `"$GITHUB_ACTION_PATH/setup_snyk.sh" "$INPUT_SNYK_VERSION" "$INPUT_OS"`.

Locations:

- `action.yml:26`
- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** script-injection

**Notes:**

Replaced ${{ github.action_path }} in action.yml run block with quoted "$GITHUB_ACTION_PATH" (echo and script invocation, including the fallback retry). Step uses shell: bash so the $VAR syntax is correct.

