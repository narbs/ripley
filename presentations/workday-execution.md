---
marp: true
theme: default
paginate: true
style: |
  section {
    font-size: 1.6rem;
  }
  section.title {
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  section.split {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
  }
  .col h3 {
    margin-top: 0;
  }
  .you { color: #2563eb; }
  .claude { color: #7c3aed; }
  strong { color: inherit; }
---

<!-- _class: title -->

# Working with Ripley

One command starts your day. Claude handles the rest.

---

# The Mental Model

Your job is **oversight**, not writing code.

- Claude queries Jira, selects cards, implements, opens PRs
- You answer questions and review diffs
- Claude asks before it commits to anything significant

> Think of Claude as a developer on your team — you're the tech lead.

- You are responsible for the code Claude generates
- Review diffs as if you wrote them yourself

---

# Starting the Workday

Type `/workday` in Claude Code.

Claude takes it from there.

&nbsp;

*\* Setup covered on the last slide*

---

# Step 1: Merged PR Review

Claude checks what landed since your last session.

- Scans recently merged PRs linked to your cards
- Summarizes what was completed
- Asks you to confirm before closing cards in Jira

**You confirm. Claude closes them out.**

---

# Step 2: Card Selection

Claude queries the Jira project configured for this working directory.

- In-progress cards first
- Then to-do, ordered by priority
- Presents a numbered list

**You pick a number.**

*\* Jira setup: see `/workday` or the last slide*

---

# Step 3: Pre-flight

Claude reads the ticket — all of it.

- Asks every ambiguity question **upfront, in one message**
- Claude avoids interrupting you mid-implementation

**You answer once. Claude starts.**

---

# Step 4: Execution

Claude works. Don't watch.

- Creates a git worktree and branch
- Implements the card
- Writes tests
- Opens a draft PR when the work is ready for your review

---

<!-- _class: split -->

# While Claude is Executing

<div class="col">

### <span class="you">You</span>

- Pick up another card
  *(Claude will ask if you want to)*
- Review open PRs
- Answer Slack / email
- Go to meetings

</div>
<div class="col">

### <span class="claude">Claude</span>

- Implementing
- Writing tests
- Handling edge cases
- Preparing the PR

</div>

**This available time is intentional — it's the point.**

---

# Parallel Cards

Multiple cards in flight at once.

- Claude surfaces a new card when it's ready to start work on the current one
- You answer pre-flight questions, then it's back to available time
- You're the coordinator, not the bottleneck

---

# Completing a Card

1. You review the draft PR — Claude logs non-obvious decisions inline
2. You tell Claude it's ready
3. Claude adds a Jira comment and marks the PR ready for review

**You are responsible for the code and the pull request.**

---

# What Claude Logs

Claude explains decisions you'd otherwise have to reverse-engineer.

- Why a particular approach was chosen over alternatives
- Trade-offs made during implementation
- Anything that diverged from the ticket

Logged at review time so the diff makes sense.

---

# Getting Started

**Copy the execution prompt to your project:**

```bash
cp ~/projects/ripley/workday.md .claude/commands/workday.md
```

**Jira CLI:** Required for card queries and updates
→ Setup guide: `workday.md#before-you-start`

Questions? Ask Claude — it knows the process.
