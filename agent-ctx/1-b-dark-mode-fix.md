# Task 1-b: Dark Mode Fix for Home Page

## Summary
Fixed all hardcoded light-mode colors in `/home/z/my-project/src/components/pages/home-page.tsx` to use CSS variable-based theme tokens for proper dark mode support.

## Changes Made

### ProductSkeletonCard
- `bg-white border border-[#E2E8F0]` → `bg-card border border-border`
- `bg-[#E2E8F0]` → `bg-muted` (7 instances: icon, name, badge, price, button)
- `bg-[#F1F5F9]` → `bg-muted/50` (6 instances: subtitle, label, progress, badges, stock text)

### Products Section Header
- `text-[#0F172A]` → `text-foreground`
- `bg-[#2563EB]/10` → `bg-primary/10`
- `text-[#2563EB]` → `text-primary`
- `text-[#64748B]` → `text-muted-foreground`
- `bg-[#F1F5F9]` → `bg-muted`

### Empty State
- `bg-white border border-[#E2E8F0]` → `bg-card border border-border`
- `text-[#64748B]` → `text-muted-foreground` (2 instances)
- `text-[#0F172A]` → `text-foreground`

### Product Cards
- `bg-white border border-[#E2E8F0]` → `bg-card border border-border`
- Removed `style={{ boxShadow: '0 2px 8px rgba(0, 0, 0, 0.04)' }}`
- `from-[#2563EB]/10 to-[#3B82F6]/5` → `from-primary/10 to-primary/5`
- `border-[#2563EB]/10` → `border-primary/10`
- `text-[#2563EB]` → `text-primary` (3 instances)
- `text-[#0F172A]` → `text-foreground` (2 instances)
- `text-[#94A3B8]` → `text-muted-foreground` (2 instances)
- `text-[#64748B]` → `text-muted-foreground` (1 instance)
- `bg-[#F1F5F9]` → `bg-muted` (2 instances)
- `bg-[#2563EB]/5` → `bg-primary/5`

### Preserved As-Is (per rules)
- Hero section internal colors (white text, semi-transparent whites on gradient)
- Gold `#FBBF24`, success green `#10b981`, red `#ef4444`, yellow `#F59E0B`
- Dark text on colored badges (`#92400E`, `#065F46`)
- BUY NOW button gradient, hero gradient bar
- Blue hover glow in `whileHover` framer-motion

## Verification
- Lint passes cleanly
- Dev server compiles successfully
- Grep confirms zero remaining hardcoded light-mode structural colors
