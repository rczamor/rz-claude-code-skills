#!/usr/bin/env bash
# SessionEnd hook for the self-improve skill.
# Reads JSON from stdin, fires `claude -p` in the background, exits immediately.
#
# Inputs (JSON on stdin from the SessionEnd hook):
#   { "session_id": "...", "transcript_path": "...", "cwd": "...",
#     "hook_event_name": "SessionEnd", "source": "...", "duration_ms": ... }
#
# Behavior:
#   - Skips if CLAUDE_SELF_IMPROVE_RUNNING=1 (prevents recursion when
#     `claude -p` itself triggers another SessionEnd).
#   - Backgrounds the headless invocation with disown so the parent
#     session exits immediately.
#   - Logs to .claude/logs/self-improve.log inside the session's cwd.
#   - Failures are silenced with `|| true` so the hook doesn't surface
#     errors that block session exit.

set -euo pipefail

# Recursion guard
if [[ "${CLAUDE_SELF_IMPROVE_RUNNING:-}" == "1" ]]; then
  exit 0
fi

# Read the JSON from stdin
json=$(cat)

# Parse fields with jq (requires jq on PATH)
transcript=$(printf '%s' "$json" | jq -r '.transcript_path // empty' 2>/dev/null || echo "")
cwd=$(printf '%s' "$json" | jq -r '.cwd // empty' 2>/dev/null || echo "")
session=$(printf '%s' "$json" | jq -r '.session_id // empty' 2>/dev/null || echo "")

# Bail if either path is missing
if [[ -z "$transcript" || -z "$cwd" ]]; then
  exit 0
fi

# Bail if cwd doesn't look like this repo
if [[ ! -d "$cwd/corpus" || ! -d "$cwd/skills" ]]; then
  exit 0
fi

mkdir -p "$cwd/.claude/logs"
log="$cwd/.claude/logs/self-improve.log"

# Compose the prompt
prompt="Run a session retrospective using the self-improve skill in retrospective mode. Session: ${session}. Transcript: ${transcript}. If and only if there is a concrete, evidence-backed learning that would improve corpus/ or skills/ in ${cwd}, open a draft PR with the proposed edits. Be conservative; skip when unsure."

# Fire it in the background. Recursion-guarded by the env var.
(
  cd "$cwd"
  CLAUDE_SELF_IMPROVE_RUNNING=1 claude -p "$prompt" \
    >> "$log" 2>&1 \
    || true
) &
disown

exit 0
