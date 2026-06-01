# Task 1-c: Dark Mode Fix for Orders & History Pages

## Summary
Fixed both `/src/components/pages/orders-page.tsx` and `/src/components/pages/history-page.tsx` so all UI elements properly respond to dark mode by replacing hardcoded light-only colors with CSS variable-based theme tokens.

## Files Modified
1. `/home/z/my-project/src/components/pages/orders-page.tsx`
2. `/home/z/my-project/src/components/pages/history-page.tsx`

## Color Replacements Applied

### Structural Colors
| Old (hardcoded) | New (theme token) | Count |
|---|---|---|
| `bg-white` | `bg-card` | 4 total |
| `border-[#E2E8F0]` | `border-border` | 5 total |
| `text-[#0F172A]` | `text-foreground` | 8 total |
| `text-[#64748B]` | `text-muted-foreground` | 14 total |
| `bg-[#F1F5F9]` | `bg-muted` | 5 total |
| `shadow-[0_4px_12px_rgba(0,0,0,0.06)]` | `shadow-sm` | 3 total |
| `style={{ boxShadow: ... }}` | removed (replaced with `shadow-sm`) | 1 total |
| `bg-[#E2E8F0]` (divider) | `bg-border` | 1 total |

### Primary Blue Theme Tokens
| Old (hardcoded) | New (theme token) | Count |
|---|---|---|
| `text-[#2563EB]` | `text-primary` | 9 total |
| `bg-[#2563EB]/10` | `bg-primary/10` | 6 total |
| `border-[#2563EB]` | `border-primary` | 1 total |
| `hover:bg-[#2563EB]/10` | `hover:bg-primary/10` | 1 total |
| `from-[#2563EB]/30 via-[#2563EB]/20` | `from-primary/30 via-primary/20` | 1 total |

### Colors Kept As-Is (per rules)
- `bg-[#10b981]/15 text-[#10b981]` — success/green status badges
- `bg-[#ef4444]/15 text-[#ef4444]` — destructive/red status badges
- `bg-[#2563EB] hover:bg-[#1D4ED8]` — solid blue buttons

## Verification
- Lint passes cleanly (zero errors)
- Dev server compiles successfully
- Grep confirms zero remaining hardcoded light structural colors
- Grep confirms zero remaining `text-[#2563EB]`, `bg-[#2563EB]/10`, `border-[#2563EB]` references
