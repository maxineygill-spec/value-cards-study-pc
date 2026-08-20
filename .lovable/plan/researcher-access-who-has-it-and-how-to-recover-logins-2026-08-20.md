# Researcher access: who has it, and how to recover logins

## What I found (verified)

- This remixed project's backend has **zero user accounts** — the auth user table is empty, and the roles table has no rows. So **nobody currently has researcher access**, including you. That's why sign-in returns "Invalid login credentials": the account you're typing existed in the *original* project, not this copy.
- The allowlist logic (a function that grants the `researcher` role to a fixed list of Harvard emails on email confirmation) was copied over, but **the trigger that runs it was not**. Even after signing up, no role would be granted.
- The Researcher panel already has a sign-in / sign-up form, but **no "forgot password" option**.

## Plan

1. **Reattach the allowlist trigger** so that when an allowlisted email confirms their account, the `researcher` role is granted automatically. Same email list as before, with the option to add/remove addresses.
2. **Create your account**: sign up once in the Researcher panel with an allowlisted email; the role is then granted automatically. (If email confirmation is off for this project, the grant runs on signup.)
3. **Add password recovery** to the Researcher sign-in form:
   - A "Forgot password?" link that sends a reset email.
   - A reset-password screen that handles the emailed link and lets the user set a new password.
4. **Fallback for lockouts**: if someone can't receive the reset email, I can reset their password directly on the backend on request — no data loss, sessions are unaffected.

## Technical notes

- Trigger: `AFTER INSERT OR UPDATE OF email_confirmed_at ON auth.users` calling the existing `grant_researcher_for_allowlist()` security-definer function; grants are idempotent via the existing unique constraint.
- Recovery: `supabase.auth.resetPasswordForEmail(email, { redirectTo: window.location.origin })`, plus a `PASSWORD_RECOVERY` auth-state branch in `ResearcherView` that shows an update-password form calling `supabase.auth.updateUser({ password })`.
- No schema/RLS changes to `sessions` or `user_roles`; researcher read access already works once the role row exists.

## Question before building

Confirm which emails should stay on the researcher allowlist (current list: maxinegill@g.harvard.edu, tperry@fas/g.harvard.edu, david_kidd@gse.harvard.edu, ksiegelstechler@fas.harvard.edu, arushisaxena@fas/g.harvard.edu, mlopes@fas.harvard.edu, jminer@fas.harvard.edu, palmiter@g.harvard.edu, brian_palmiter@fas.harvard.edu, amelia.bertaska@gmail.com).
