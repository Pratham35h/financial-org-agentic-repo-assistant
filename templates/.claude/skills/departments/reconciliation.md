# Reconciliation Skill

Load this skill for cash, position, trade, NAV, ledger, holdings, bank statement, or custodian/admin breaks.

## Primary Concerns

- Internal-versus-external matching logic.
- Tolerance, aging, materiality, and escalation rules.
- Break classification, ownership, commentary, and resolution workflow.
- Source files from custodians, administrators, banks, DTCC, SWIFT, and accounting systems.
- Reruns, late files, duplicate records, and manual adjustments.

## Read First

- `.claude/references/vendor-file-intake.md`
- `.claude/references/external-systems.md`
- `.claude/references/testing.md`
- `.claude/references/gotchas.md`

## Ask Before Changing

- Match keys, tolerance rules, break statuses, or aging logic are undocumented.
- The change could suppress, auto-close, or reclassify breaks.
