# Task 1-a: Add Dark Mode Toggle with next-themes

## Agent: Dark Mode Agent
## Status: Completed

## Work Log

### Step 1: Updated Providers
- **File**: `/home/z/my-project/src/components/providers.tsx`
- Added `ThemeProvider` import from `next-themes`
- Wrapped `QueryClientProvider` with `ThemeProvider`
- Set `attribute="class"`, `defaultTheme="light"`, `enableSystem={false}`

### Step 2: Updated Layout
- **File**: `/home/z/my-project/src/app/layout.tsx`
- Replaced hardcoded Toaster colors with CSS variables:
  - `background: '#FFFFFF'` → `background: 'var(--card)'`
  - `border: '1px solid #E2E8F0'` → `border: '1px solid var(--border)'`
  - `color: '#0F172A'` → `color: 'var(--foreground)'`

### Step 3: Updated globals.css Dark Mode Variables
- **File**: `/home/z/my-project/src/app/globals.css`
- Updated `.dark` block with proper dark mode colors:
  - Background: #0F172A, Card/Popover: #1E293B, Foreground: #F8FAFC
  - Muted: #334155, Muted foreground: #94A3B8, Border/Input: #334155
  - Primary: #3B82F6, Primary foreground: #FFFFFF
  - Secondary: #1E293B, Secondary foreground: #F8FAFC
  - Destructive: #EF4444, Accent: #3B82F6, Ring: #3B82F6
  - Gold: #3B82F6, Surface: #1E293B
  - Chart colors: #3B82F6, #60A5FA, #34D399, #FBBF24, #EF4444
  - Sidebar values matching main dark values
- Added dark mode CSS class overrides:
  - `.dark .hero-gradient` — darker blue gradient tones
  - `.dark .surface-card` — #1E293B bg, #334155 border
  - `.dark .btn-gold` / `.dark .btn-gold:hover` — #3B82F6 border/color, rgba(59,130,246,0.1) hover
  - `.dark .btn-gold-solid` / `.dark .btn-gold-solid:hover` — #3B82F6 bg, #2563EB hover
  - `.dark ::-webkit-scrollbar-*` — #1E293B track, rgba(59,130,246,0.3) thumb
  - `.dark .skeleton-shimmer` — #334155/#475569 gradient

### Step 4: Added Dark Mode Toggle Button to Header
- **File**: `/home/z/my-project/src/components/header.tsx`
- Added imports: `Moon`, `Sun` from lucide-react, `useTheme` from next-themes, `AnimatePresence` from framer-motion
- Added toggle button between logo and wallet/login section
- Smooth Framer Motion rotation transition between Moon (light mode) and Sun (dark mode) icons
- Button styling: `rounded-lg p-2 hover:bg-[#F1F5F9] dark:hover:bg-white/10 transition-colors`
- Icons: Moon when light (#64748B), Sun when dark (#94A3B8), size-5
- aria-label="Toggle dark mode" for accessibility

### Step 5: Updated App Shell for Dark Mode
- **File**: `/home/z/my-project/src/components/app-shell.tsx`
- Replaced `bg-[#F8FAFC]` → `bg-background`
- Replaced `text-[#64748B]` → `text-muted-foreground`
- Replaced `border-[#2563EB]` spinner → `border-primary`

### Step 6: Updated Bottom Nav for Dark Mode
- **File**: `/home/z/my-project/src/components/bottom-nav.tsx`
- Replaced `bg-white` → `bg-card`
- Replaced `style={{ borderTop: '1px solid #E2E8F0' }}` → `className="border-t border-border"`
- Replaced `text-[#2563EB]` → `text-primary` (both icon and label)
- Replaced `text-[#64748B]` → `text-muted-foreground` (both icon and label)

### Step 7: Updated Header for Dark Mode
- **File**: `/home/z/my-project/src/components/header.tsx` (done as part of Step 4)
- Replaced `bg-white` → `bg-card`
- Replaced `style={{ borderBottom: '1px solid #E2E8F0' }}` → `className="border-b border-border"`
- Replaced `text-[#0F172A]` → `text-foreground`
- Replaced `text-[#64748B]` → `text-muted-foreground`
- Replaced `text-[#2563EB]` → `text-primary`
- Replaced `hover:bg-[#F1F5F9]` → `hover:bg-muted` (wallet button)

## Verification
- `bun run lint` passes with zero errors
- Dev server compiles successfully without errors
