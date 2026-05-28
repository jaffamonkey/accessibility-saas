# Human-Centred Testing — Accessibility-focused Blowfish site

This version has been stripped back to the primary market focus: accessibility specialist support, audit services, and the Accessibility Systemic Analyzer guides. Conversational AI and general testing service pages have been removed from the navigation and content.


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

## Homepage spacing update

This build widens the homepage content area and refines the core service cards so they feel less cramped. The service number labels now render as small lozenges and service links render as softer pill links.

## Latest homepage tweak

The accessibility-only homepage has been tightened again:

- removed the 01 / 02 numbering from the service panels
- reduced the hero heading size
- brought the hero, service cards and analyser strip onto the same content width
- kept the existing accessible colour and focus treatment
