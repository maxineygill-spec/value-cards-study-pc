REVOKE EXECUTE ON FUNCTION public.grant_researcher_for_allowlist() FROM anon, authenticated, public;
REVOKE EXECUTE ON FUNCTION public.has_role(uuid, public.app_role) FROM anon, public;