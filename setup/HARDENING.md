<!-- markdownlint-disable -->

# Hardening Report: snyk--actions--setup/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **snyk--actions--setup/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### script-injection (severity: high)

Sub-rule (a): Two `${{ github.action_path }}` expressions are directly interpolated inside a `run:` shell block. Per the check rules, ANY `${{ ... }}` expression inside a `run:` block is a script-injection finding, regardless of which context it reads from. Line 26: `echo ${{ github.action_path }}` and line 28: `${{ github.action_path }}/setup_snyk.sh "${INPUT_SNYK_VERSION}" "${INPUT_OS}" || ...`. These should be replaced with the equivalent environment variable `$GITHUB_ACTION_PATH` (already used on line 25 and in the fallback on line 28), which is already available as a pre-set env var and does not require expression interpolation.

Locations:

- `action.yml:26`
- `action.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** script-injection

**Notes:**

Replaced both `${{ github.action_path }}` expressions in the `run:` block with `$GITHUB_ACTION_PATH` (the equivalent pre-set GitHub Actions environment variable). Removed the redundant `echo ${{ github.action_path }}` debug line (the `echo $GITHUB_ACTION_PATH` above it already serves that purpose) and simplified the script call from a `primary || fallback` pattern (where both sides were identical after substitution) to a single `$GITHUB_ACTION_PATH/setup_snyk.sh` invocation.

