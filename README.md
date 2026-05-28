# Human-Centred Testing — Blowfish Hugo Site

A ready-to-run Hugo site using the [Blowfish](https://blowfish.page/) theme and the converted Markdown content from the supplied HTML files.

## What is included

```text
config/_default/          Blowfish/Hugo configuration
content/                  Converted site pages
content/guides/           Converted Accessibility Systemic Analyzer guides
static/images/            Placeholder images matching the converted image paths
assets/css/custom.css     Small optional refinements
netlify.toml              Netlify build config
setup-theme.sh            Helper script to download Blowfish locally
```

## Local setup

Install Hugo Extended first, then from the project root:

```bash
./setup-theme.sh
hugo server
```

Open the local URL Hugo prints, usually:

```text
http://localhost:1313/
```

## Deploying to Netlify

The included `netlify.toml` clones Blowfish during the build, then runs Hugo:

```toml
command = "git clone --depth 1 --branch main https://github.com/nunocoracao/blowfish.git themes/blowfish && hugo --gc --minify"
publish = "public"
```

## Notes

- The theme itself is not vendored in this zip. Run `./setup-theme.sh` locally, or let the Netlify build command fetch it.
- Placeholder PNGs are included so the site renders cleanly immediately. Replace files in `static/images/` with your real artwork using the same filenames.
- Main menu links are configured in `config/_default/menus.en.toml`.
- Site-level appearance and article/list settings are in `config/_default/params.toml`.


## Netlify Hugo version note

This site pins Netlify to Hugo Extended `0.161.1` in `netlify.toml`. Blowfish currently requires Hugo `0.158.0` or later, so do not remove the `HUGO_VERSION` setting unless your Netlify project environment variables already pin a compatible Hugo version.

If Netlify still reports an older Hugo version in the build log, add this in **Site configuration → Environment variables** as well:

```text
HUGO_VERSION=0.161.1
HUGO_EXTENDED=true
```

## Accessible colour scheme

This build uses a custom Blowfish colour scheme named `accessible-clarity`.

The scheme lives at:

```text
assets/css/schemes/accessible-clarity.css
```

The extra accessibility polish lives at:

```text
assets/css/custom.css
```

It adds stronger keyboard focus indicators, underlined body links, clearer panel/table borders, and a slightly larger base font size. See `ACCESSIBLE_COLOUR_SCHEME.md` for the contrast notes.
