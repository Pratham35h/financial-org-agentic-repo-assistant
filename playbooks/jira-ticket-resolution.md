# Jira Ticket Resolution Playbook

Use this playbook when resolving assigned Jira tickets.

## Steps

1. Pull Jira ticket through Atlassian MCP.
2. Pull linked Confluence pages and related issues.
3. Save ticket context under `.claude/tickets/<ticket-id>/`.
4. Compare acceptance criteria with repo references.
5. For financial file work, read `.claude/references/vendor-file-intake.md`.
6. Load only the relevant department skill files under `.claude/skills/departments/`.
7. Locate relevant code.
8. Ask focused clarification when business meaning is unclear.
9. Implement the smallest safe change.
10. Run relevant tests.
11. Save validation notes.
12. Produce Jira and PR summaries.

## Clarification Triggers

Ask the user when:

- Acceptance criteria are missing.
- Jira comments conflict with Confluence.
- Existing behavior disagrees with the requested behavior.
- The change touches payment, identity, compliance, or mainframe batch behavior.
- The deployment target is unclear.
- A vendor file contract, reconciliation tolerance, cut-off, or regulatory reporting rule is unclear.
