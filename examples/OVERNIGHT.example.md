# Overnight report — 2026-11-14

> Example output. Your report will look like this when you wake up.

## Summary
- Done: 7  ·  Blocked: 1  ·  Not started: 1  ·  Fable questions used: 2/10
- Branch: `overnight/2026-11-14` (not pushed)
- Usage pause: 03:50 → 05:02 (85% of the 5-hour window)

## Needs you (decide first)
1. **Auth migration: keep the old session table for 30 days, or drop it after backfill?**
   Options: A) keep 30 days, B) drop after backfill. My pick: **A**, because rollback stays cheap.
   Evidence: `migrations/0042_sessions.sql:18`, backfill dry run: 14,203 rows, 0 conflicts.

## Done
- **#120 Parser rewrite** — all 20 cases match the reference. Verified: `pytest tests/parser -q` → 20 passed. Commits: `a1c9e02`, `5b7f31d`.
- **#75 Legal library split** — one source per unit. Verified: `npm run build` clean, 0 lint warnings.
- **#17 Research note** — `docs/research/caching.md`, 1,240 words, 9 sources linked.
- …

## Blocked
- **#88 Flaky e2e test** — fails 1 in 6 runs on `checkout.spec.ts:44`.
  Ladder: 3 Sonnets split (timing / selector / test data) → Opus: race in the mock server →
  Fable: confirmed, fix needs a new dependency (`msw@2`) → **on the NEVER list**, stopped.

## Not started
- **#6 Billing page** — plan only, as agreed. Plan + 4 questions in `plans/billing.md`.

## Log
See `log.md` (142 lines).
