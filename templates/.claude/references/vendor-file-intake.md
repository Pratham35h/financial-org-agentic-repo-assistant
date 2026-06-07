# Vendor File Intake

Use this reference when the repository receives, validates, transforms, reconciles, or distributes files from external financial sources.

## Known Sources

| Source | Department / Process | Direction | File Types | Landing / Transport | Frequency | Downstream Consumers | Owner |
| --- | --- | --- | --- | --- | --- | --- | --- |
| TBD | TBD | Inbound/Outbound | CSV, pipe, fixed-width, XML, JSON, SWIFT, Excel, parquet, other | SFTP, MFT, S3, API, email, shared drive, MQ, other | TBD | TBD | TBD |

## Sources To Check For

- Custodians and fund administrators: State Street, BNY / BNY Mellon, Citi, JPMorgan, Northern Trust, State Street Alpha, SS&C.
- Market/reference data: Morningstar, Bloomberg, Refinitiv / LSEG, MSCI / Barra, S&P Global / Markit, ICE / IDC, Moody's, Fitch.
- Clearing, settlement, and messaging: DTCC, NSCC, FICC, Euroclear, Clearstream, SWIFT, local market CSDs.
- Banking and cash: Citi, BNY, JPMorgan, HSBC, Bank of America, Wells Fargo, treasury workstations.
- Transfer agency and investor servicing: SS&C, DST, transfer agents, fund platforms.

## Intake Controls

Record the concrete implementation details when discovered:

- File naming pattern and business date rules.
- Transport path, bucket, queue, mailbox, or MFT route.
- Encryption, signing, checksum, PGP key, and credential ownership.
- Header/trailer counts, control totals, record counts, and balancing fields.
- Duplicate detection and replay/backfill behavior.
- Schema versioning and backward compatibility rules.
- Required fields, nullable fields, defaulting, and reject thresholds.
- Time zone, cut-off, holiday calendar, and late-file handling.
- Data quality checks and exception queues.
- Notification and escalation path when files are missing, late, malformed, or imbalanced.

## Transformation / Mapping

| Source Field | Internal Field | Rule | Owner / Source Doc |
| --- | --- | --- | --- |
| TBD | TBD | TBD | TBD |

## Reconciliation

| Reconciliation Type | Internal Side | External Side | Tolerance | Break Owner |
| --- | --- | --- | --- | --- |
| Cash | TBD | TBD | TBD | TBD |
| Position | TBD | TBD | TBD | TBD |
| Transaction | TBD | TBD | TBD | TBD |
| NAV / ledger | TBD | TBD | TBD | TBD |

## High-Risk Areas

- Vendor file layout changes without versioning or sample files.
- Silent drops of records due to nullable fields, unexpected identifiers, or encoding issues.
- Business-date mismatches caused by time zones, weekends, holidays, or late files.
- Identifier mapping conflicts across CUSIP, ISIN, SEDOL, ticker, FIGI, internal IDs, and account IDs.
- Pricing, NAV, cash, or settlement changes that affect books of record.
- Licensed market data redistributed beyond approved consumers.
- PII, investor data, payment data, or regulatory records stored in ticket notes or logs.

## Needs Verification

- TBD
