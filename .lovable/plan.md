# Single-condition study: Issues deck only

Right now, starting the study randomly assigns each participant to either the Values deck or the Issues (scenario) deck. This change locks every session to the Issues deck, while leaving the Values pathway dormant in the code so it can be re-enabled later.

## What changes for the participant

- Starting the study always deals the 20 policy-issue cards.
- Glossary, Deal, Trade, Sort and Summary screens all show the Issues wording (already implemented for that condition).
- No visible mention of a second condition anywhere in the flow.

## What stays the same

- Trading mechanic, partner rankings, top-3 selection, timing capture, data saved to the backend.
- The Researcher view keeps its `condition` column and per-condition counts, so existing sessions from the Values condition still display correctly.

## Technical notes

- `src/hooks/useGameState.ts`: replace the random assignment in `startStudy` with the fixed condition, and initialize the `condition` state to `"issues"`. Introduce a single module-level constant (e.g. `ACTIVE_CONDITION: Condition = "issues"`) used by both, so flipping back is a one-line edit.
- Keep the `Condition` type, `ALL_VALUES`, and every `condition === 'issues' ? ... : ...` branch untouched — they become dormant but functional.
- Saved rows keep `condition: "issues"` and `deck_version: "issues-20"`, which the existing insert already handles.
- No database or schema changes.
