---
Task ID: 1
Agent: Main
Task: Add support_link to Prisma schema + push to DB

Work Log:
- Added `support_link String @default("")` to AppSettings model in prisma/schema.prisma
- Ran `bun run db:push` to sync database
- Prisma Client regenerated successfully

Stage Summary:
- Database schema updated with new support_link field
- Ready for API and UI integration

---
Task ID: 2
Agent: Sub-agent (full-stack-developer)
Task: Add logout button to header

Work Log:
- Added LogOut import from lucide-react
- Destructured logout from useAuthStore
- Added logout button between dark mode toggle and wallet balance when logged in
- Styled with rounded-lg, hover:bg-muted, aria-label for accessibility

Stage Summary:
- Logout button visible when user is logged in
- Positioned between dark mode toggle and wallet balance
- Calls auth store logout method

---
Task ID: 3
Agent: Main
Task: Add floating support button with admin-configurable link

Work Log:
- Created /src/components/support-button.tsx with floating button
- Fetches support_link from /api/admin/settings
- Shows MessageCircle icon floating button at bottom-right
- Shows tooltip with "সাপোর্ট" text on hover
- Opens support link in new tab on click
- Only renders if support_link is configured
- Added SupportButton to app-shell.tsx

Stage Summary:
- Floating support button visible on all pages
- Links to admin-configurable support URL
- Hidden when no support link is set

---
Task ID: 4-a
Agent: Sub-agent (full-stack-developer)
Task: Update settings API for support_link

Work Log:
- Added support_link to GET handler default settings creation
- Added support_link to PUT handler destructured body
- Added support_link conditional assignment in updateData

Stage Summary:
- API route now handles support_link field in both GET and PUT

---
Task ID: 4-b
Agent: Sub-agent (full-stack-developer)
Task: Add support_link to admin settings tab

Work Log:
- Added MessageCircle import from lucide-react
- Added support_link: string to AppSettings interface
- Added supportLink state in SettingsTab
- Added supportLink setter in fetchSettings
- Added support_link in handleSave body
- Added support link UI field with MessageCircle icon and placeholder

Stage Summary:
- Admin can now configure support link from settings tab
- Field appears after admin email field

---
Task ID: 5
Agent: Sub-agent (full-stack-developer)
Task: Fix dark mode across all pages

Work Log:
- Fixed home-page.tsx: text-[#92400E] → text-[#92400E] dark:text-[#FBBF24]
- Fixed home-page.tsx: text-[#065F46] → text-[#065F46] dark:text-[#34D399]
- Fixed home-page.tsx: out-of-stock gradient → added dark:from-[#64748B] dark:to-[#94A3B8]
- Verified all other pages use theme-aware CSS variables

Stage Summary:
- All badge text colors now have dark mode variants
- Hardcoded dark text colors replaced with dual light/dark variants
- All pages verified to work in both light and dark mode

---
Task ID: 6
Agent: Sub-agent (full-stack-developer)
Task: Fix deposit page screen issues

Work Log:
- Made feature cards responsive with sm: breakpoints
- Made progress bar responsive
- Made amount input responsive (h-12 sm:h-14)
- Added min-w-0 and overflow-hidden to prevent overflow
- Added break-all on phone numbers
- Hidden "কপি" text on mobile (icon-only)
- Replaced all hardcoded #2563EB with bg-primary/primary-foreground theme tokens
- Replaced all #1D4ED8 hover states with hover:bg-primary/90

Stage Summary:
- Deposit page fully responsive on mobile
- All primary colors use theme tokens for dark mode support
- Overflow prevention added throughout
