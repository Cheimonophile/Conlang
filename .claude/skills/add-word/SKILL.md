---
name: add-word
description: Add a new word to the conlang dictionary in Conlang Notes/Dictionary/. Decide its origin (derived through Borrowing Words.md, borrowed directly, or inspired), work through any derivation, and write the entry file. Use when asked to add, coin, create, borrow or make up a word, or to add a dictionary entry or vocabulary for an English meaning.
---

`.claude/rules/dictionary-entries.md` defines the entry format. Follow it exactly. This skill gives the order of work.

1. **Check that an entry is needed.** Search `Conlang Notes/Dictionary/` for the form (as a filename) and for the meaning (in `Translations`). If the word already exists, or it is a productive derivation that the rules say gets no entry, tell the user instead of creating a file.
2. **Settle the origin.** Each kind of origin gets a different section:
	- *Derived* through a strategy in `Conlang Notes/Borrowing Words.md`: Etymology, with the etymon.
	- *Borrowed directly*: the source form taken unchanged, without the steps (`gazon` from French). Etymology, with the source word.
	- *Inspired*: a form chosen directly from one or more source words (`dár`, or `tas` from Persian `tās`). Inspirations, listing the sources.
	- *Built inside the language* from existing words or affixes, with a lexicalized meaning: Etymology, linking the parts.

	If the user gives a form and a source but doesn't say whether the word is borrowed or inspired, ask. If they give only a meaning, choose an etymon that fits a strategy and derive the word from it.
3. **Show any derivation in the reply** before creating the file. Give the base form and the result of each numbered step in Borrowing Words.md, laid out like that note's Examples table.
4. **Fill in the frontmatter.** `Translations` takes the user's glosses as given. Add the properties that the part of speech's `.base` file displays. For a noun's `Declension`, compare existing nouns with similar endings. For a verb, use the conjugation classes in `Conlang Notes/Verbs.md`. If a property can't be determined, omit it and say so.
5. **Write the file** at `Conlang Notes/Dictionary/<part-of-speech folder>/<word>.md`, with tab-indented sub-bullets. Etymology and Inspirations list sources and nothing else. Explain your choice of section, declension or form in the reply, not in the file.
6. **Report** the path and the decisions you made. Don't stage or commit. Update the Minecraft pack (`minecraft_pack/assets/minecraft/lang/qcl_aa.json`) only if the user asks for the word to be used there.
