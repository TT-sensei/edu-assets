# Common Badge Generation Guide

## Series direction

The reference is a circular sprout enamel badge. Reuse its visual grammar: a circular gold-toned outer rim, thick black contour lines, bright blue energy background, high-saturation accent colors, white glossy highlights, energetic rays and small sparkle motifs. The subject changes from badge to badge, but the collection should feel like one achievement system.

Do not copy the reference image exactly. Do not include subject-specific school labels, letters, numbers, words, watermarks, mockups, hands, or photographic backgrounds.

## Base prompt

```text
Use case: stylized-concept.
Asset type: reusable web learning achievement badge.
Input images: the attached sprout enamel badge is a visual reference only; match its shared series language, not its exact subject.
Primary request: Create one circular enamel pin badge featuring [MOTIF].
Style/medium: crisp vector-style pop-art illustration, playful graffiti edge, thick black outlines, glossy enamel highlights, bold circular outer rim, dynamic but simple iconic composition, strong silhouette readable at small web-icon size.
Color palette: bright cheerful colors, highly saturated vivid colors, colorful pop-art palette, using a varied combination of sky blue, turquoise, lime green, emerald, yellow, gold, orange, coral, pink and purple. Keep black mainly for outlines and accents; avoid large dark areas.
Composition/framing: centered composition, complete badge inside the canvas, circular enamel pin shape, 1:1 square composition.
Constraints: genuinely transparent background, isolated object, no text, no letters, no numbers, no watermark, no mockup, no hands, no photographic background.
Overall mood: playful, energetic, special, collectible game-achievement badge for elementary school learners, suitable for a consistent series of 100+ badges.
```

The original compact prompt form is:

```text
A circular enamel pin badge inspired by TWEWY art style, featuring [MOTIF], bold thick black outlines, edgy graffiti-inspired shapes, bright cheerful colors, highly saturated vivid colors, colorful pop-art palette, high contrast, minimal dark areas, dynamic composition, simple iconic design, centered composition, thick enamel pin outer rim, clean vector-style illustration, crisp edges, strong silhouette, playful and energetic, kid-friendly game achievement badge aesthetic, consistent visual style suitable for a collectible badge series, transparent background, isolated object, 1:1 square composition, no text, no letters, no numbers, no watermark, no mockup, no hands, no photographic background.
```

## Production rules

- Output: transparent PNG, 512×512 px, 1:1.
- Keep the outer rim and main subject clearly separated from the transparent edge.
- Use thick, high-contrast outlines so the motif remains recognizable at 64–96 px.
- Vary the dominant accent colors by motif; do not make every badge monochrome.
- Keep the badge free of text and numbers. Use slugs and metadata for meaning.
- Save one asset at `assets/badges/common/<slug>/badge.png`.
- Add the asset to the Common Badges table in `README.md`.
- Add the Japanese display name and an example unlock condition to the app-side data when the badge is adopted.

## Suggested prompt format for new badges

```text
[BASE PROMPT]
MOTIF: [one clear, iconic object or compact visual metaphor]
MEANING: [one achievement or learning behavior]
DOMINANT COLORS: [two to four bright colors that are not already overused]
```

Prefer one strong central metaphor over many small objects. For a new category, first choose a category color family, then add a distinct silhouette and one highlight color so the badge remains recognizable in a grid.
