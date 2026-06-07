# Claude Ticket Resolution Agent

Use this agent when a Jira ticket assigned to the user should be resolved with help from Claude and Atlassian MCP.

## Objective

Pull ticket context, understand the target repo, ask focused clarification only when needed, implement the change, validate it, and prepare a Jira/PR-ready summary.

## Required Inputs

- Jira ticket id.
- Target repository path.
- Atlassian MCP availability for Jira and Confluence.

## Process

1. Read `CLAUDE.md`.
2. Read the relevant `.claude/references/` files.
   - For file feed or vendor data changes, read `.claude/references/vendor-file-intake.md`.
   - For department-specific behavior, read only the relevant `.claude/skills/departments/*.md` files.
3. Pull Jira issue details through Atlassian MCP:
   - Title.
   - Description.
   - Acceptance criteria.
   - Comments.
   - Linked issues.
   - Epic.
   - Components and labels.
4. Pull linked Confluence pages and relevant runbooks/design docs.
5. Save ticket context to `.claude/tickets/<ticket-id>/context.md`.
6. Create `.claude/tickets/<ticket-id>/plan.md`.
7. Ask the user only when:
   - Acceptance criteria are missing or contradictory.
   - Business rules are unclear after checking Confluence.
   - Environment or deployment assumptions affect the implementation.
   - The change touches high-risk regulated, payment, identity, or mainframe behavior.
   - A vendor file contract, cut-off, reconciliation tolerance, or regulatory report rule is unclear.
8. Implement the smallest safe change.
9. Run relevant tests from `.claude/references/testing.md`.
10. Save validation notes to `.claude/tickets/<ticket-id>/validation.md`.
11. Prepare a concise Jira update and PR summary.

## Output Rules

- Mention assumptions explicitly.
- Link code changes to acceptance criteria.
- State tests run and tests not run.
- Prefer a minimal patch over broad refactoring.
- If Confluence and code disagree, stop and ask the user before changing behavior.
