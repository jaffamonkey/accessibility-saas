# Accessible Clarity colour scheme

This site uses a custom Blowfish colour scheme called `accessible-clarity`.

Files added/changed:

```text
assets/css/schemes/accessible-clarity.css
assets/css/custom.css
config/_default/params.toml
```

The scheme is designed around:

- dark slate neutrals for high text contrast
- royal blue as the main action/link colour
- teal as a secondary accent
- visible keyboard focus rings
- underlined body links so links are not indicated by colour alone
- slightly larger base text at `13pt`
- clearer table, card, blockquote and code boundaries

## Key contrast checks

Approximate WCAG contrast ratios for the main colours:

| Pair | Ratio | Notes |
|---|---:|---|
| Light background `#F8FAFC` + dark text `#0F172A` | 16.94:1 | AAA for normal text |
| Dark background `#0F172A` + light text `#F8FAFC` | 16.94:1 | AAA for normal text |
| Body link blue `#1D4ED8` on light background `#FFFFFF` | 6.70:1 | AAA for normal text |
| Body link blue `#93C5FD` on dark background `#0F172A` | 9.35:1 | AAA for normal text |
| Teal accent `#0F766E` on light background `#FFFFFF` | 5.31:1 | AA/AAA depending on text size |
| Teal accent `#5EEAD4` on dark background `#0F172A` | 12.39:1 | AAA for normal text |
| Amber focus `#F59E0B` on dark background `#0F172A` | 8.81:1 | Very visible keyboard focus |

Colour is still not the only cue: content links are underlined and focus uses outline, offset and glow.
