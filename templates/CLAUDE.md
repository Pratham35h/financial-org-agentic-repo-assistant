# CLAUDE.md

## Primary Rule

Use repo references before scanning broadly.

Start with:

- `.claude/references/repo-map.md`
- `.claude/references/architecture.md`
- `.claude/references/testing.md`
- `.claude/references/gotchas.md`

For financial data/file workflows, also check:

- `.claude/references/vendor-file-intake.md`
- The relevant `.claude/skills/departments/*.md` file.

## Ticket Resolution

When resolving Jira tickets:

1. Use Atlassian MCP to fetch the Jira issue, linked issues, comments, epic, and Confluence pages.
2. Save ticket context to `.claude/tickets/<ticket-id>/context.md`.
3. Compare the ticket request against existing repo references.
4. Ask the user for clarification only when acceptance criteria, business rules, or environment assumptions are unclear.
5. Prefer minimal, localized changes.
6. Run relevant tests from `.claude/references/testing.md`.
7. Save validation notes to `.claude/tickets/<ticket-id>/validation.md`.

## Stack-Specific Guidance

If Java, inspect Maven/Gradle, Spring config, batch jobs, deployment descriptors, and cloud/on-prem configuration.

If Python AWS, inspect serverless/IaC files, boto3 usage, Lambda handlers, Glue jobs, Step Functions, and IAM assumptions.

If .NET, inspect `.sln`, `.csproj`, appsettings, controllers/services, NuGet packages, and deployment config.

If COBOL, inspect JCL, copybooks, DB2/VSAM usage, CICS transactions, and batch job flow.

## Department Skills

Load department skills only when relevant to the ticket or workflow:

- Data/file ingestion and feeds: `.claude/skills/departments/data-operations.md`
- NAV, fund books, pricing, accruals: `.claude/skills/departments/fund-accounting.md`
- Trades, positions, corporate actions, reference data: `.claude/skills/departments/investment-operations.md`
- Cash, position, trade, NAV, and ledger breaks: `.claude/skills/departments/reconciliation.md`
- Performance, attribution, exposure, risk metrics: `.claude/skills/departments/risk-performance.md`
- Regulatory, surveillance, audit, retention: `.claude/skills/departments/compliance-regulatory.md`
- Payments, FX, cash movement, settlement: `.claude/skills/departments/treasury-settlements.md`
