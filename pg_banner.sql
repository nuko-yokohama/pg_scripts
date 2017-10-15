CREATE TABLE IF NOT EXISTS banner (data text);

CREATE OR REPLACE FUNCTION sp()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '   ' as tx  UNION
SELECT 2 as id , '   ' as tx  UNION
SELECT 3 as id , '   ' as tx  UNION
SELECT 4 as id , '   ' as tx  UNION
SELECT 5 as id , '   ' as tx  UNION
SELECT 6 as id , '   ' as tx  UNION
SELECT 7 as id , '   ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION sq()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '####### ' as tx  UNION
SELECT 3 as id , '####### ' as tx  UNION
SELECT 4 as id , '####### ' as tx  UNION
SELECT 5 as id , '####### ' as tx  UNION
SELECT 6 as id , '####### ' as tx  UNION
SELECT 7 as id , '####### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_ex()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ### ' as tx  UNION
SELECT 2 as id , ' ### ' as tx  UNION
SELECT 3 as id , ' ### ' as tx  UNION
SELECT 4 as id , '  #  ' as tx  UNION
SELECT 5 as id , '     ' as tx  UNION
SELECT 6 as id , ' ### ' as tx  UNION
SELECT 7 as id , ' ### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_qu()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' #####  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '      # ' as tx  UNION
SELECT 4 as id , '   ###  ' as tx  UNION
SELECT 5 as id , '   #    ' as tx  UNION
SELECT 6 as id , '        ' as tx  UNION
SELECT 7 as id , '   #    ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_priod()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '     ' as tx  UNION
SELECT 2 as id , '     ' as tx  UNION
SELECT 3 as id , '     ' as tx  UNION
SELECT 4 as id , '     ' as tx  UNION
SELECT 5 as id , ' ### ' as tx  UNION
SELECT 6 as id , ' ### ' as tx  UNION
SELECT 7 as id , ' ### ' as tx  
) AS t ORDER BY id
$function$
;


CREATE OR REPLACE FUNCTION banner_a()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '   #    ' as tx  UNION
SELECT 2 as id , '  # #   ' as tx  UNION
SELECT 3 as id , ' #   #  ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , '####### ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_b()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '######  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '######  ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '######  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_c()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' #####  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '#       ' as tx  UNION
SELECT 5 as id , '#       ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , ' #####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_d()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '######  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '######  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_e()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '#       ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '#####   ' as tx  UNION
SELECT 5 as id , '#       ' as tx  UNION
SELECT 6 as id , '#       ' as tx  UNION
SELECT 7 as id , '####### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_f()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '#       ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '#####   ' as tx  UNION
SELECT 5 as id , '#       ' as tx  UNION
SELECT 6 as id , '#       ' as tx  UNION
SELECT 7 as id , '#       ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_g()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' #####  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '#  #### ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , ' #####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_h()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '####### ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_i()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '### ' as tx  UNION
SELECT 2 as id , ' #  ' as tx  UNION
SELECT 3 as id , ' #  ' as tx  UNION
SELECT 4 as id , ' #  ' as tx  UNION
SELECT 5 as id , ' #  ' as tx  UNION
SELECT 6 as id , ' #  ' as tx  UNION
SELECT 7 as id , '### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_j()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '      # ' as tx  UNION
SELECT 2 as id , '      # ' as tx  UNION
SELECT 3 as id , '      # ' as tx  UNION
SELECT 4 as id , '      # ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , ' #####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_k()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#    # ' as tx  UNION
SELECT 2 as id , '#   #  ' as tx  UNION
SELECT 3 as id , '#  #   ' as tx  UNION
SELECT 4 as id , '###    ' as tx  UNION
SELECT 5 as id , '#  #   ' as tx  UNION
SELECT 6 as id , '#   #  ' as tx  UNION
SELECT 7 as id , '#    #  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_l()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#       ' as tx  UNION
SELECT 2 as id , '#       ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '#       ' as tx  UNION
SELECT 5 as id , '#       ' as tx  UNION
SELECT 6 as id , '#       ' as tx  UNION
SELECT 7 as id , '####### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_m()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '##   ## ' as tx  UNION
SELECT 3 as id , '# # # # ' as tx  UNION
SELECT 4 as id , '#  #  # ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_n()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '##    # ' as tx  UNION
SELECT 3 as id , '# #   # ' as tx  UNION
SELECT 4 as id , '#  #  # ' as tx  UNION
SELECT 5 as id , '#   # # ' as tx  UNION
SELECT 6 as id , '#    ## ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_o()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , '####### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_p()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '######  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '######  ' as tx  UNION
SELECT 5 as id , '#       ' as tx  UNION
SELECT 6 as id , '#       ' as tx  UNION
SELECT 7 as id , '#       ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_q()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' #####  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , '#   # # ' as tx  UNION
SELECT 6 as id , '#    #  ' as tx  UNION
SELECT 7 as id , ' #### # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_r()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '######  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '######  ' as tx  UNION
SELECT 5 as id , '#   #   ' as tx  UNION
SELECT 6 as id , '#    #  ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_s()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' #####  ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , ' #####  ' as tx  UNION
SELECT 5 as id , '      # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , ' #####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_t()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '   #    ' as tx  UNION
SELECT 3 as id , '   #    ' as tx  UNION
SELECT 4 as id , '   #    ' as tx  UNION
SELECT 5 as id , '   #    ' as tx  UNION
SELECT 6 as id , '   #    ' as tx  UNION
SELECT 7 as id , '   #    ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_u()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , '#     # ' as tx  UNION
SELECT 6 as id , '#     # ' as tx  UNION
SELECT 7 as id , ' #####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_v()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '#     # ' as tx  UNION
SELECT 3 as id , '#     # ' as tx  UNION
SELECT 4 as id , '#     # ' as tx  UNION
SELECT 5 as id , ' #   #  ' as tx  UNION
SELECT 6 as id , '  # #   ' as tx  UNION
SELECT 7 as id , '   #    ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_w()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , '#  #  # ' as tx  UNION
SELECT 3 as id , '#  #  # ' as tx  UNION
SELECT 4 as id , '#  #  # ' as tx  UNION
SELECT 5 as id , '#  #  # ' as tx  UNION
SELECT 6 as id , '#  #  # ' as tx  UNION
SELECT 7 as id , ' ## ##  ' as tx
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_x()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , ' #   #  ' as tx  UNION
SELECT 3 as id , '  # #   ' as tx  UNION
SELECT 4 as id , '   #    ' as tx  UNION
SELECT 5 as id , '  # #   ' as tx  UNION
SELECT 6 as id , ' #   #  ' as tx  UNION
SELECT 7 as id , '#     # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_y()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#     # ' as tx  UNION
SELECT 2 as id , ' #   #  ' as tx  UNION
SELECT 3 as id , '  # #   ' as tx  UNION
SELECT 4 as id , '   #    ' as tx  UNION
SELECT 5 as id , '   #    ' as tx  UNION
SELECT 6 as id , '   #    ' as tx  UNION
SELECT 7 as id , '   #    ' as tx
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_z()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '####### ' as tx  UNION
SELECT 2 as id , '     #  ' as tx  UNION
SELECT 3 as id , '    #   ' as tx  UNION
SELECT 4 as id , '   #    ' as tx  UNION
SELECT 5 as id , '  #     ' as tx  UNION
SELECT 6 as id , ' #      ' as tx  UNION
SELECT 7 as id , '####### ' as tx
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_0()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ####  ' as tx  UNION
SELECT 2 as id , '#   ## ' as tx  UNION
SELECT 3 as id , '#  # # ' as tx  UNION
SELECT 4 as id , '# #  # ' as tx  UNION
SELECT 5 as id , '##   # ' as tx  UNION
SELECT 6 as id , '#    # ' as tx  UNION
SELECT 7 as id , ' ####  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_1()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '  #   ' as tx  UNION
SELECT 2 as id , ' ##   ' as tx  UNION
SELECT 3 as id , '# #   ' as tx  UNION
SELECT 4 as id , '  #   ' as tx  UNION
SELECT 5 as id , '  #   ' as tx  UNION
SELECT 6 as id , '  #   ' as tx  UNION
SELECT 7 as id , '##### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_2()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ###  ' as tx  UNION
SELECT 2 as id , '#   # ' as tx  UNION
SELECT 3 as id , '#   # ' as tx  UNION
SELECT 4 as id , '   #  ' as tx  UNION
SELECT 5 as id , '  #   ' as tx  UNION
SELECT 6 as id , ' #    ' as tx  UNION
SELECT 7 as id , '##### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_3()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ###  ' as tx  UNION
SELECT 2 as id , '#   # ' as tx  UNION
SELECT 3 as id , '    # ' as tx  UNION
SELECT 4 as id , ' ###  ' as tx  UNION
SELECT 5 as id , '    # ' as tx  UNION
SELECT 6 as id , '#   # ' as tx  UNION
SELECT 7 as id , ' ###  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_4()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '#   # ' as tx  UNION
SELECT 2 as id , '#   # ' as tx  UNION
SELECT 3 as id , '#   # ' as tx  UNION
SELECT 4 as id , '##### ' as tx  UNION
SELECT 5 as id , '    # ' as tx  UNION
SELECT 6 as id , '    # ' as tx  UNION
SELECT 7 as id , '    # ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_5()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '######  ' as tx  UNION
SELECT 2 as id , '#       ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '######  ' as tx  UNION
SELECT 5 as id , '     #  ' as tx  UNION
SELECT 6 as id , '     #  ' as tx  UNION
SELECT 7 as id , '######  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_6()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ###    ' as tx  UNION
SELECT 2 as id , '#   #   ' as tx  UNION
SELECT 3 as id , '#       ' as tx  UNION
SELECT 4 as id , '####    ' as tx  UNION
SELECT 5 as id , '#   #   ' as tx  UNION
SELECT 6 as id , '#   #   ' as tx  UNION
SELECT 7 as id , ' ###    ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_7()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '##### ' as tx  UNION
SELECT 2 as id , '    # ' as tx  UNION
SELECT 3 as id , '   #  ' as tx  UNION
SELECT 4 as id , '  #   ' as tx  UNION
SELECT 5 as id , ' #    ' as tx  UNION
SELECT 6 as id , ' #    ' as tx  UNION
SELECT 7 as id , ' #    ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_8()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ###  ' as tx  UNION
SELECT 2 as id , '#   # ' as tx  UNION
SELECT 3 as id , '#   # ' as tx  UNION
SELECT 4 as id , ' ###  ' as tx  UNION
SELECT 5 as id , '#   # ' as tx  UNION
SELECT 6 as id , '#   # ' as tx  UNION
SELECT 7 as id , ' ###  ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_9()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , ' ###    ' as tx  UNION
SELECT 2 as id , '#   #   ' as tx  UNION
SELECT 3 as id , '#   #   ' as tx  UNION
SELECT 4 as id , ' ###    ' as tx  UNION
SELECT 5 as id , '   #    ' as tx  UNION
SELECT 6 as id , '  #     ' as tx  UNION
SELECT 7 as id , ' #      ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION banner_us()
 RETURNS SETOF text
 LANGUAGE sql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
SELECT tx FROM (
SELECT 1 as id , '        ' as tx  UNION
SELECT 2 as id , '        ' as tx  UNION
SELECT 3 as id , '        ' as tx  UNION
SELECT 4 as id , '        ' as tx  UNION
SELECT 5 as id , '        ' as tx  UNION
SELECT 6 as id , '        ' as tx  UNION
SELECT 7 as id , '####### ' as tx  
) AS t ORDER BY id
$function$
;

CREATE OR REPLACE FUNCTION create_insert_sql(in_text text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  c text;
  sql text;
  cnt integer;
  i integer;
BEGIN
  sql := 'INSERT INTO banner SELECT ''''' ;
  cnt = length(in_text);
  IF cnt < 1 THEN
    RAISE WARNING 'Zero size text.';
  END IF;
  FOR i IN 1 .. cnt LOOP
    -- RAISE NOTICE 'sql=%', sql;
    c := substring(in_text from i for 1);
    -- RAISE NOTICE 'c=%', c;
    CASE c
      WHEN 'a','A' THEN
        sql := sql || '|| banner_a ';
      WHEN 'b','B' THEN
        sql := sql || '|| banner_b ';
      WHEN 'c','C' THEN
        sql := sql || '|| banner_c ';
      WHEN 'd','D' THEN
        sql := sql || '|| banner_d ';
      WHEN 'e','E' THEN
        sql := sql || '|| banner_e ';
      WHEN 'f','F' THEN
        sql := sql || '|| banner_f ';
      WHEN 'g','G' THEN
        sql := sql || '|| banner_g ';
      WHEN 'h','H' THEN
        sql := sql || '|| banner_h ';
      WHEN 'i','I' THEN
        sql := sql || '|| banner_i ';
      WHEN 'j','J' THEN
        sql := sql || '|| banner_j ';
      WHEN 'k','K' THEN
        sql := sql || '|| banner_k ';
      WHEN 'l','L' THEN
        sql := sql || '|| banner_l ';
      WHEN 'm','M' THEN
        sql := sql || '|| banner_m ';
      WHEN 'n','N' THEN
        sql := sql || '|| banner_n ';
      WHEN 'o','O' THEN
        sql := sql || '|| banner_o ';
      WHEN 'p','P' THEN
        sql := sql || '|| banner_p ';
      WHEN 'q','Q' THEN
        sql := sql || '|| banner_q ';
      WHEN 'r','R' THEN
        sql := sql || '|| banner_r ';
      WHEN 's','S' THEN
        sql := sql || '|| banner_s ';
      WHEN 't','T' THEN
        sql := sql || '|| banner_t ';
      WHEN 'u','U' THEN
        sql := sql || '|| banner_u ';
      WHEN 'v','V' THEN
        sql := sql || '|| banner_v ';
      WHEN 'w','W' THEN
        sql := sql || '|| banner_w ';
      WHEN 'x','X' THEN
        sql := sql || '|| banner_x ';
      WHEN 'y','Y' THEN
        sql := sql || '|| banner_y ';
      WHEN 'z','Z' THEN
        sql := sql || '|| banner_z ';
      WHEN '0' THEN
        sql := sql || '|| banner_0 ';
      WHEN '1' THEN
        sql := sql || '|| banner_1 ';
      WHEN '2' THEN
        sql := sql || '|| banner_2 ';
      WHEN '3' THEN
        sql := sql || '|| banner_3 ';
      WHEN '4' THEN
        sql := sql || '|| banner_4 ';
      WHEN '5' THEN
        sql := sql || '|| banner_5 ';
      WHEN '6' THEN
        sql := sql || '|| banner_6 ';
      WHEN '7' THEN
        sql := sql || '|| banner_7 ';
      WHEN '8' THEN
        sql := sql || '|| banner_8 ';
      WHEN '9' THEN
        sql := sql || '|| banner_9 ';
      WHEN '.' THEN
        sql := sql || '|| banner_priod ';
      WHEN '!' THEN
        sql := sql || '|| banner_ex ';
      WHEN '_' THEN
        sql := sql || '|| banner_us ';
      ELSE
        sql := sql || '|| sp ';
    END CASE;
    
  END LOOP;
  sql := sql || 'FROM ( SELECT * FROM ROWS FROM ( banner_us(), banner_priod(), banner_ex(), sp(), sq(), banner_a(), banner_b(), banner_c(), banner_d(), banner_e(), banner_f(), banner_g(), banner_h(), banner_i(), banner_j(), banner_k(), banner_l(), banner_m(), banner_n(), banner_o(), banner_p(), banner_q(), banner_r(), banner_s(), banner_t(), banner_u(), banner_v(), banner_w(), banner_x(), banner_y(), banner_z(), banner_0(), banner_1(), banner_2(), banner_3(), banner_4(), banner_5(), banner_6(), banner_7(), banner_8(), banner_9())) as _x ' ;

  -- RAISE NOTICE 'last sql=%', sql;
  RETURN sql;
END;
$function$
;

--
-- banner main function.
--
CREATE OR REPLACE FUNCTION pg_banner(in_text text)
 RETURNS SETOF banner 
 LANGUAGE plpgsql
 -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER
AS $function$
DECLARE
sql text;
t banner%rowtype;
BEGIN
  TRUNCATE TABLE banner;
  sql := create_insert_sql(in_text);
  -- RAISE NOTICE 'banner insert_sql=%', sql;
  EXECUTE sql;
  FOR t IN 
    SELECT * FROM banner
  LOOP
    RETURN NEXT t;
  END LOOP;
  RETURN;
END;
$function$
;

