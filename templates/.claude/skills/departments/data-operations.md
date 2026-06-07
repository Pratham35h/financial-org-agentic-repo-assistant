# Data Operations Skill

Load this skill for tickets involving inbound/outbound files, ETL, data quality, vendor feeds, file monitoring, reruns, replays, or source-to-target mapping.

## Primary Concerns

- File arrival, timeliness, completeness, and SLA monitoring.
- Schema validation, version changes, malformed rows, rejected records, and quarantine.
- Source-to-target mappings and transformations.
- Replay, backfill, idempotency, duplicate detection, and audit trails.
- Vendor coordination for State Street, SS&C, Morningstar, BNY, Citi, Bloomberg, Refinitiv/LSEG, MSCI, S&P, ICE, DTCC, SWIFT, and similar sources.

## Read First

- `.claude/references/vendor-file-intake.md`
- `.claude/references/external-systems.md`
- `.claude/references/dependencies.md`
- `.claude/references/testing.md`

## Ask Before Changing

- File contracts, cut-offs, SLA thresholds, encryption, or source ownership are unclear.
- The change could drop, default, or reinterpret vendor data.
- Replay/backfill behavior could produce duplicate downstream records.
