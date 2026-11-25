# Notes — Invent a Word We Need

Competition: `u-deranalabs-invent-a-word-we-need-17a020e0`
(Growth, $5 pool: $2 / $2 / $1, deadline 2026-11-27T09:55:00Z, free entry.)
Kit: `~/workspace/makefun/u-deranalabs-invent-a-word-we-need-17a020e0-kit/`
Gate (sealed scorer, server-side): `/output/entry.txt` must be UTF-8 text,
1–140 characters, not only whitespace. Judge: pairwise, criteria in order —
(1) fresh word + one-line definition, (2) fills a real gap the reader
recognises at once, (3) definition lands in one reading, (4) sayable /
spellable / memorable, sounds English-grown, (5) fresh and surprising.

## Final entry

> nomenclapse — the sudden blank when you forget someone's name mid-conversation.

- 79 characters, 81 bytes UTF-8, one line, no trailing newline.
- Etymology: Latin *nomen* (name) + *lapse* — built like *nomenclature*,
  so it reads as a word English could already have grown.
- Why it wins: forgetting a name mid-conversation is universal and has no
  English word (nearby *lethologica* is about forgetting a word, not a
  person's name). The definition needs no second sentence.

## Candidates considered (all checked by web search, 2026-11-25)

| Word | Definition | Verdict |
|---|---|---|
| **nomenclapse** | The sudden blank when you forget someone's name mid-conversation. | **CHOSEN** — zero exact web hits; strongest gap, dictionary-shaped. |
| callhearsal | The silent rehearsal of what you will say before making a phone call. | Runner-up — zero web hits, but "rehearsal" already covers the idea, so the gap is weaker. |
| quoticipation | Mouthing a familiar line a split second before it is spoken on screen. | Zero web hits, but the gap is narrower (film/TV watchers only). |
| corridance | The mirrored sidestep dance when two people block each other in a hallway. | Dropped — one stray hit ("vaginal corridance", a mistranslation on a spammy site) and it reads like a typo of "concordance". |
| tabnesia | Forgetting why you opened a new browser tab. | Dropped — already exists (Chrome/Firefox extension + word lists). |
| cancellebration | The secret joy of plans being cancelled. | Dropped — already exists (NYT, May 2026, Colbert finale). |
| peelphoria | The small thrill of peeling the plastic film off a new device. | Dropped — confusingly one letter from existing meme word "peephoria" (relief after peeing). |
| youtooism | Reflexively replying "you too" to a wish that cannot be returned. | Dropped — one obscure prior use in an opera essay's list of "-isms"; weaker gap than nomenclapse. |

## Verification log

- `sh verify.sh` (2026-11-25): `OK: 79 karakter, 81 byte, UTF-8 valid,
  satu baris, tanpa whitespace ujung`. `od -c` confirms the file ends with
  `.`, no trailing newline.
- `makefun check --kit <kit> --repo <dev> --worktree` (2026-11-25):
  kit verified 8 files; 2 passed, 3 failed (license_osi, entrypoint,
  transcripts_present), 14 skipped, 5 at-submission.
- Fixes applied: root `LICENSE` (MIT + SPDX line) and `main.py` entrypoint
  at repo root. Re-check after fixes (2026-11-25): **4 passed, 1 failed
  (transcripts_present only), 14 skipped, 5 at-submission** — license_osi
  and entrypoint now pass.
- `transcripts_present` can only pass at submit time: the transcripts
  bundle is built by `makefun bundle` from the submitting session
  (system prompt + sessions). NOT submitted from this build — submit needs
  the user's explicit green light in chat.

## Repo

GitHub repo `mihawnk-nft/u-deranalabs-invent-a-word-we-need-17a020e0`
(public) is required by the kit at submission time (`repo_public`,
`repo_created_after_open`, `commit_in_repo` checks), so this entry is
pushed there; the entry itself is the text in `output/entry.txt`.

## Status

Preview-ready. NOT submitted. Submit only on the user's explicit go-ahead.
