# External Systems

## APIs

| System | Direction | Purpose | Files |
| --- | --- | --- | --- |
| TBD | TBD | TBD | TBD |

## Databases / Queues / Files

| System | Purpose | Notes |
| --- | --- | --- |
| TBD | TBD | TBD |

## Common Financial Vendor / Source Systems

Use this section when the repo handles inbound or outbound files from market-data vendors, custodians, fund administrators, transfer agents, clearing utilities, or banking partners.

| Source | Common Purpose | Typical Files / Notes |
| --- | --- | --- |
| State Street | Custody, accounting, fund administration, positions, transactions, cash, NAV support | Often daily batch files over SFTP or managed file transfer. Confirm exact layout and cut-off with local docs. |
| SS&C | Fund administration, transfer agency, investor records, alternatives, reconciliation data | May include shareholder, fund accounting, trade, or investor servicing feeds. |
| Morningstar | Security master, ratings, classifications, fund analytics, performance data | Often used for reference data enrichment and reporting. |
| BNY / BNY Mellon | Custody, fund accounting, cash, positions, corporate actions, settlements | Confirm whether feed is custody, accounting, Pershing, or another BNY platform. |
| Citi | Custody, cash, FX, settlements, securities services, bank statements | May include SWIFT-derived statements, custody extracts, or payment files. |
| Bloomberg | Security master, prices, corporate actions, analytics, identifiers | Watch for identifier precedence, stale prices, and licensed field restrictions. |
| Refinitiv / LSEG | Market data, pricing, identifiers, corporate actions, sanctions/reference data | Confirm feed product and field licensing before changing distribution. |
| MSCI / Barra | Risk models, factors, indexes, ESG, classifications | Commonly consumed by risk, performance, and portfolio analytics systems. |
| S&P / Markit / IHS Markit | Ratings, indices, loans, CDS, reference and pricing data | Source name may appear as S&P Global, Markit, or product-specific branding. |
| ICE / IDC | Pricing, evaluated prices, fixed income data, indices | Pricing hierarchy and stale price controls are usually important. |
| DTCC / NSCC | Clearing, settlement, fund/SERV, corporate actions, trade confirmations | Treat as high-control post-trade infrastructure. |
| SWIFT | Bank statements, payment messages, securities settlement messages | Message types such as MT/MX may have strict formatting and audit needs. |
| Transfer agents | Investor activity, subscriptions/redemptions, shareholder records | Often department-specific and highly sensitive. |
