# Atlassian MCP Playbook

Use Atlassian MCP to pull live Jira and Confluence context.

## Jira Context To Pull

- Issue key.
- Title.
- Description.
- Acceptance criteria.
- Comments.
- Status.
- Assignee.
- Reporter.
- Labels.
- Components.
- Fix version.
- Linked issues.
- Parent epic.
- Attachments when relevant.

## Confluence Context To Pull

- Linked pages from the Jira ticket.
- Epic design pages.
- Runbooks.
- Business rule documentation.
- API contracts.
- Vendor file specifications and sample layouts.
- Department operating procedures for file handling, reconciliations, NAV, settlement, risk, or regulatory reporting.
- Operational notes.

## Storage

Save normalized ticket context to:

```text
.claude/tickets/<ticket-id>/context.md
```

Save implementation plan to:

```text
.claude/tickets/<ticket-id>/plan.md
```

Save validation notes to:

```text
.claude/tickets/<ticket-id>/validation.md
```
