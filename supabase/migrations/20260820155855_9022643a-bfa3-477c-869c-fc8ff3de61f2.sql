DROP TRIGGER IF EXISTS on_auth_user_allowlist_researcher ON auth.users;
CREATE TRIGGER on_auth_user_allowlist_researcher
AFTER INSERT OR UPDATE OF email_confirmed_at ON auth.users
FOR EACH ROW EXECUTE FUNCTION public.grant_researcher_for_allowlist();