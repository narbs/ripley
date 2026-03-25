# Presentations

Slide decks are written in Markdown using [Marp](https://marp.app/).

## Rendering

**Install the CLI once:**

```bash
npm install -g @marp-team/marp-cli
```

**Render a single presentation to HTML:**

```bash
marp presentations/workday-execution.md
```

This writes `workday-execution.html` alongside the source file. Open it in any browser.

**Render all presentations:**

```bash
marp presentations/*.md
```

**Export to PDF:**

```bash
marp --pdf presentations/workday-execution.md
```

## VS Code

Install the [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) extension for a live preview while editing.

## Notes

- HTML output is gitignored — render locally as needed.
