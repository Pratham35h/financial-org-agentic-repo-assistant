# Claude Enterprise Repo Agent

Reusable Claude/VS Code project for onboarding enterprise repositories and resolving Jira tickets with Atlassian MCP context.

The goal is simple:

1. Clone an enterprise repo.
2. Run a Claude onboarding workflow.
3. Generate durable repo memory in `CLAUDE.md` and `.claude/references/`.
4. Use Jira and Confluence context to resolve assigned tickets with fewer repeated repo reads.

## What This Provides

- Claude-specific repo memory templates.
- Agent prompts for repo onboarding and Jira ticket resolution.
- Stack playbooks for Java, Python AWS, .NET, and COBOL/mainframe repos.
- Financial vendor file-intake guidance for sources such as State Street, SS&C, Morningstar, BNY, Citi, Bloomberg, Refinitiv/LSEG, MSCI, S&P, ICE, DTCC, SWIFT, and custodians/administrators.
- Department-specific skill files so Claude can load the relevant business context only when needed.
- A PowerShell script to bootstrap `.claude/` references into any cloned repo.
- A practical structure that works alongside VS Code and GitHub Copilot.

## Individual Contributor Quickstart

1. Clone this assistant repo.

```powershell
git clone <this-repo-url>
cd financial-org-agentic-repo-assistant
```

2. Clone the application repo you need to work on.

```powershell
git clone <enterprise-app-repo-url> C:\work\my-app
```

3. Bootstrap Claude memory into the application repo.

```powershell
.\scripts\init-claude-repo-memory.ps1 -TargetRepo "C:\work\my-app"
```

4. Open the application repo in Claude or VS Code.

```powershell
cd C:\work\my-app
```

5. Ask Claude to onboard the repo.

```text
Use C:\path\to\financial-org-agentic-repo-assistant\agents\claude-repo-onboarding-agent.md to inspect this repository and fill in the .claude references.
```

6. Review generated memory.

```text
Check CLAUDE.md and .claude/references/*.md for accuracy. Mark uncertain items as Needs verification.
```

7. For Jira work, ask Claude to resolve the ticket.

```text
Use C:\path\to\financial-org-agentic-repo-assistant\agents\claude-ticket-resolution-agent.md to resolve Jira ticket ABC-123 using Atlassian MCP.
```

8. For vendor file work, tell Claude the source and department if known.

```text
This ticket affects a State Street positions file used by Reconciliation. Use the relevant .claude references and department skill.
```

## Repository Layout

```text
agents/
  claude-repo-onboarding-agent.md
  claude-ticket-resolution-agent.md
  specialists/
    java-agent.md
    python-aws-agent.md
    dotnet-agent.md
    cobol-mainframe-agent.md

templates/
  CLAUDE.md
  .claude/
    references/
      repo-map.md
      architecture.md
      testing.md
      deployment.md
      dependencies.md
      domain-glossary.md
      external-systems.md
      vendor-file-intake.md
      gotchas.md
    skills/
      departments/
        data-operations.md
        fund-accounting.md
        investment-operations.md
        reconciliation.md
        risk-performance.md
        compliance-regulatory.md
        treasury-settlements.md
    tickets/
      README.md

playbooks/
  repo-onboarding.md
  jira-ticket-resolution.md
  atlassian-mcp.md
  stack-detection.md

scripts/
  init-claude-repo-memory.ps1
```

## Operating Model

Use Copilot for cursor-level coding and Claude for repo-level reasoning:

- Copilot: autocomplete, small functions, boilerplate, local refactors.
- Claude: repo onboarding, architecture tracing, Jira interpretation, Confluence digestion, cross-file edits, validation summaries.

## Memory Principle

Do not store giant summaries of every file. Store navigation knowledge:

- Where the entry points are.
- Where business rules live.
- How to run and test the repo.
- Which modules are risky.
- Which files matter for common ticket types.
- Which department skill should be loaded for the business process.
- Which vendor/source files feed the process and how breaks are handled.

## Preserved Project Context

The original reusable prompt and design intent are preserved in `docs/PROJECT_CONTEXT.md`.

Use that file when:

- Rebuilding this assistant in another LLM.
- Explaining the project to contributors.
- Deciding whether a new prompt, playbook, template, or department skill belongs here.
- Updating the project scope over time.
