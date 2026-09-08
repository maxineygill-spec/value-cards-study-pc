# Plan: Wording fixes for participants

Three small copy changes in the Issues-only version of the game.

## 1. Spell out "NPC" (Meet Partners screen)

File: `src/screens/MeetPartners.tsx` (line 24)

Replace:
> The rest of the deck is dealt to the two NPC partners. You must trade at least once with each...

With:
> The rest of the deck is dealt to the two Non-Playing Characters (NPC, virtual game players). You must trade at least once with each, but you can make multiple trades until you are satisfied with your hand.

## 2. "Values cards" → "issues cards" language

The Issues path already says "issue cards" in the Glossary intro, but two spots still say "value":

- `src/screens/ModeSelect.tsx` — change the intro screen title from **"Value Cards Study"** to **"Issue Cards Study"**.
- `src/screens/Glossary.tsx` — the values-condition intro paragraph (currently dormant, since only the issues condition runs) stays untouched; no "values" wording appears anywhere else on the issues path.

## 3. End-of-game screen (Summary)

File: `src/screens/Summary.tsx`

- Remove both buttons: **"Download my data"** and **"Play again"**.
- Keep the session recap card (started with / ended with / trades / partners).
- Add a closing message below the recap:
  > Thank you for playing the game! Please click the "Next page" button to move to the final part of the study.

Note: there is no "Next page" button inside the app — this instruction assumes participants continue via the external survey platform. The unused `onExport`/`onPlayAgain` props will be removed from the component and its usage in `src/pages/Index.tsx`.

## Technical details

- Pure copy/UI edits in three screen files plus the `Index.tsx` prop cleanup; session data is still saved to the backend automatically when the summary screen appears — only the manual download button goes away.
- No changes to game logic, card data, or the researcher view.
