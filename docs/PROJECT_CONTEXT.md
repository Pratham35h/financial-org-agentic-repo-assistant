# Project Context

This file preserves the original product/context prompt behind this repository so the same assistant system can be rebuilt, ported to another LLM, and improved by contributors without relying on private chat history.

## Seed Prompt

Build a reusable agentic repository assistant for enterprise financial-organization engineering teams.

The assistant should help an individual contributor clone an existing enterprise application repository, generate durable repo memory, and then use that memory with Jira, Confluence, and code context to resolve assigned tickets faster and more safely.

The repository should include:

- Agent prompts for repository onboarding and Jira ticket resolution.
- Reusable playbooks for onboarding repos, resolving tickets, using Atlassian MCP, and detecting technology stacks.
- Claude-compatible project memory templates, centered on `CLAUDE.md` and `.claude/references/`.
- Department-specific business context for common financial operations workflows.
- Specialist guidance for common enterprise stacks such as Java, Python AWS, .NET, and COBOL/mainframe.
- A bootstrap script that copies the memory template into any cloned application repository.

The assistant should be optimized for financial services repositories where tickets may involve vendor or administrator files, custodians, reconciliation breaks, fund accounting, investment operations, risk, performance, compliance, treasury, settlements, or mainframe batch processing.

## Intended Users

- Individual contributors working in large financial technology codebases.
- Engineers who need to onboard unfamiliar repositories quickly.
- Developers resolving Jira tickets that require business context from Confluence, comments, acceptance criteria, file contracts, and existing code.
- Contributors who want to improve shared AI-assisted engineering workflows without storing sensitive application code in this assistant repo.

## Core Problem

Enterprise repositories are hard for LLMs to work with because each session often starts from zero.

This project solves that by creating durable navigation memory:

- Where important code lives.
- How the application runs, tests, and deploys.
- Which modules are risky.
- Which files matter for common ticket types.
- Which external systems and vendor feeds are involved.
- Which business department context should be loaded only when relevant.

The goal is not to summarize every file. The goal is to preserve enough repo knowledge that future LLM sessions can reason with less repeated scanning.

## Design Principles

- Store navigation knowledge, not giant file summaries.
- Keep generated memory compact, reviewable, and safe to commit where allowed.
- Mark uncertain conclusions as `Needs verification`.
- Prefer exact paths, commands, entry points, and decision points.
- Load business context only when relevant to the ticket or workflow.
- Keep application-specific secrets, credentials, customer data, and regulated data out of this assistant repo.
- Treat Atlassian/Jira/Confluence context as ticket-specific working context, saved under `.claude/tickets/<ticket-id>/` inside the target repo when appropriate.
- Keep the system portable enough that another LLM can use the same prompts and playbooks even if the current template is Claude-oriented.

## Current Repository Shape

```text
agents/
  claude-repo-onboarding-agent.md
  claude-ticket-resolution-agent.md
  specialists/

playbooks/
  repo-onboarding.md
  jira-ticket-resolution.md
  atlassian-mcp.md
  stack-detection.md

templates/
  CLAUDE.md
  .claude/
    references/
    skills/
      departments/
    tickets/

scripts/
  init-claude-repo-memory.ps1
```

## Rebuild Prompt

Use this prompt in another LLM if the project needs to be recreated or extended from scratch:

```text
You are helping build a reusable agentic repository assistant for enterprise financial-organization engineering teams.

Create a repository that helps developers:

1. Clone an enterprise application repo.
2. Bootstrap LLM-readable repo memory into that repo.
3. Onboard the repo by generating concise references for architecture, repo map, testing, deployment, dependencies, domain glossary, external systems, vendor file intake, and gotchas.
4. Resolve Jira tickets using Jira, Confluence, repo memory, and source code.
5. Load only relevant department/business context for workflows such as data operations, fund accounting, investment operations, reconciliation, risk/performance, compliance/regulatory, and treasury/settlements.
6. Use stack-specific guidance for Java, Python AWS, .NET, and COBOL/mainframe systems.

Make the repository documentation-heavy and safe for enterprise use. Do not include secrets, production data, customer data, or private application code. Prefer concise prompts, playbooks, templates, and bootstrap scripts.

The generated repo should contain:

- agents/ with repo-onboarding and ticket-resolution prompts.
- agents/specialists/ with stack-specific guidance.
- playbooks/ with reusable operating procedures.
- templates/CLAUDE.md and templates/.claude/ references, department skills, and ticket workspace structure.
- scripts/init-claude-repo-memory.ps1 to copy the template into a target application repo.
- README.md with quickstart, operating model, layout, and memory principles.
- docs/PROJECT_CONTEXT.md preserving this seed context and contribution guidance.

Optimize for contributors who will improve the assistant over time.
```

## Contribution Guidance

When improving this project:

- Update this file when the project scope, target users, or core assumptions change.
- Update `README.md` when usage changes.
- Update templates when target-repo memory structure changes.
- Update playbooks when workflow steps change.
- Update agents when the LLM behavior or output contract changes.
- Add stack or department guidance only when it is reusable across multiple repositories.
- Keep examples generic unless a sanitized sample is clearly useful.

## What Not To Store Here

- Credentials, tokens, connection strings, or private keys.
- Non-public customer, investor, account, trade, position, NAV, payment, or regulatory data.
- Proprietary source code from target enterprise repositories.
- Raw Jira or Confluence content copied from private systems.
- Vendor file samples unless they are fully synthetic or explicitly approved for sharing.

## Future Improvements

- Add provider-neutral variants such as `AGENTS.md`, `GEMINI.md`, or `OPENAI.md`.
- Add a cross-LLM bootstrap option in the PowerShell script.
- Add sanitized example target-repo memory under `examples/`.
- Add validation checks for required template files.
- Add contribution templates for new departments, vendors, stacks, and playbooks.
