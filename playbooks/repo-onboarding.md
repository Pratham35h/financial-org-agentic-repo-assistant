# Repo Onboarding Playbook

Use this playbook to create durable Claude memory for a cloned repository.

## Steps

1. Inventory top-level files and folders.
2. Detect primary and secondary stacks.
3. Identify build, run, test, and deployment commands.
4. Locate entry points.
5. Identify vendor/source file feeds, landing zones, file contracts, cut-offs, controls, and downstream consumers.
6. Select relevant department skills under `.claude/skills/departments/`.
7. Trace one representative business workflow.
8. Identify external systems.
9. Create concise reference files under `.claude/references/`.
10. Update `CLAUDE.md` to point to the references.

## Good Reference Quality

Good references help future sessions answer:

- Where should I start?
- Which files matter for this ticket type?
- How do I validate changes?
- What is risky or unclear?
- Which vendor/source files feed this workflow?
- Which department skill should be loaded for this ticket type?

Avoid full-file summaries unless a file is central and non-obvious.
