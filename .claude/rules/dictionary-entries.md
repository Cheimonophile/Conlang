# Dictionary Entries

The lexicon lives in `Conlang Notes/Dictionary/`, one markdown file per word,
foldered by part of speech. These conventions apply to every entry.

## File naming

The filename is the word itself, exactly as spelled in the language
(`cultur.md`, `troņc.md`, `-ar.md`), in the folder for its part of speech.

## Frontmatter

Frontmatter holds the machine-readable properties. The `.base` table views read
frontmatter *only* — never the body — so every entry needs at minimum:

```yaml
---
Translations:
  - culture
---
```

`Translations` is a list of short English glosses, not full definitions. Add the
properties that part of speech's `.base` file displays:

- Nouns: `Declension` (e.g. `Thematic`)
- Verbs: `Transitivity`, `Aspect`

Omit a property entirely rather than leaving it blank when it isn't known yet.

## Body sections

Section headings are **bare lines of plain text**, not markdown `#` headings,
separated by a blank line, each followed by a bulleted list. Use these names:

- **Definitions** — always this word, plural. Never "Definition" or
  "Translations". The gloss is a top-level bullet; individual senses are
  tab-indented sub-bullets beneath it.
- **Etymology** — the word's source, written as plain text with the language in
  parentheses: `cultūra (Latin)`. Don't add Wiktionary links in new entries.
  Leave existing entries as they are; don't strip their links or reformat their
  etymologies to match. For words derived inside
  the language, link the parts relatively:
  `[coron](../Nouns/coron.md) + [-ar](../Adjectival%20Suffixes/-ar.md)`.
  For a word modelled on a language family rather than on one etymon, the
  top-level bullet is the family in parentheses, and the individual words that
  inspired it go in tab-indented sub-bullets beneath it:

  ```markdown
  Etymology
  - (Romance)
  	- fournir (French)
  	- fornir (Catalan)
  	- fornire (Italian)
  ```
- **Inspirations** — used in place of Etymology for a word coined freely from
  one or more source words rather than derived through
  `Conlang Notes/Borrowing Words.md`. List the words that shaped it, formatted
  the same way as Etymology: plain text with the language in parentheses, and a
  family in parentheses with tab-indented sub-bullets when several words from
  one family contributed:

  ```markdown
  Inspirations
  - (Romance)
  	- tierra (Spanish)
  	- terre (French)
  - dirt (English)
  ```
- **Properties**, **Usage**, **Syncretism**, **Examples**, **Notes** — as
  applicable.

Every non-stub entry should have a Definitions section and either an Etymology
or an Inspirations section.

Full example:

```markdown
---
Translations:
  - culture
Declension: Thematic
---
Definitions
- culture
	- arts, customs and habits
	- the beliefs, values, behavior and material objects that constitute a people's way of life

Etymology
- cultūra (Latin)
```

## Coining new words

New vocabulary must be derived through `Conlang Notes/Borrowing Words.md`. For
the Romance strategy that means starting from the Latin etymon in the base form
that note specifies — nouns: accusative plural; verbs: 1sg present active
indicative — and applying its numbered steps in order. Work the derivation
through explicitly before creating the file, and record the etymon in the
Etymology section.

Do not silently deviate from those steps. If a word intentionally departs from
them, say so in its Etymology section rather than leaving the deviation
unexplained.

A word can also be coined freely, blending source words into a form chosen
directly rather than produced by the steps — `dár` "dirt", from Romance
`tierra`/`terre` and English `dirt`. Such a word gets an Inspirations section
listing its sources instead of an Etymology section. The section name already
marks it as not derived, so it needs no separate deviation note.

## Don't create entries for productive derivations

A word formed by a productive affix needs no file of its own. `-ar` relational
adjectives, for instance, are formed automatically wherever the usage conditions
in `Conlang Notes/Dictionary/Adjectival Suffixes/-ar.md` hold, so `mondar` gets
no entry. Give a derived word its own entry only when its meaning is
lexicalized — not predictable from its parts — the way `coronar` "royal" is.
