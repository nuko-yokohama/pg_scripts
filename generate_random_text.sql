--
-- generate long random text function
--

CREATE OR REPLACE FUNCTION generate_random_text( len integer )
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  i integer;
  rt text := '';
BEGIN
  FOR i IN 1 .. len LOOP
   rt := rt || chr(trunc(random() * 95)::int+32);
  END LOOP;
  RETURN rt;
END
$function$
;
