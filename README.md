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


## Homepage row width alignment patch

The custom homepage blocks now deliberately break out of the narrower article/prose column and use a centred width designed to visually match the Blowfish Recent cards row. The controlling override is at the end of `assets/css/custom.css`.

## Homepage analyzer collage update

The homepage analyzer section now uses a two-card layout: explanatory text on the left and the generated analyzer collage image on the right. The image is stored at:

```text
static/images/accessibility-systemic-analyzer-collage.webp
```

The section is rendered by:

```text
layouts/shortcodes/analyser-strip.html
```
