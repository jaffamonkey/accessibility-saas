# Human-Centred Testing — Blowfish Hugo site

This version uses the Blowfish Hugo theme with a custom accessible colour scheme and a shortcode-based homepage.

## Local setup

```bash
./setup-theme.sh
hugo server
```

## Netlify

The included `netlify.toml` pins a modern Hugo Extended version compatible with current Blowfish.

## Homepage note

The homepage service cards and analyzer strip are rendered through custom Hugo shortcodes in `layouts/shortcodes/`:

- `core-services.html`
- `analyser-strip.html`

This keeps the Markdown page clean and avoids raw HTML being displayed as text by Hugo/Goldmark.
