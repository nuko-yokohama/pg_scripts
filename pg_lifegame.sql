--
-- pg_lifegame.sql
--

--
-- separagte_test (in_text, sep_num, loop_num)
--
-- Examples
-- SELECT separate_text('abcdefgh', 3, 3);
--  separate_text 
-- ---------------
--  abc          +
--  def          +
--  gh           +
--  
-- (1 row)
--
CREATE OR REPLACE FUNCTION separate_text( in_text text, sep_num int, loop_num int )
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  i int;
  out_text text := '';
BEGIN
  FOR i IN 0 .. (loop_num - 1) LOOP
    out_text := out_text || substring(in_text, i * sep_num + 1, sep_num) || E'\n';
  END LOOP;
  RETURN out_text;
END;
$function$
;

CREATE OR REPLACE FUNCTION text_to_array(in_text text)
 RETURNS text
 LANGUAGE plpgsql
 
AS $function$
DECLARE
  len int;
  i int := 0;
  in_c text;
  out_array text[];
BEGIN
  len := length(in_text);
  out_array := ARRAY[]::text[];
  FOR i IN 1 .. len LOOP
    in_c := substring(in_text, i, 1);
    out_array := array_append(out_array, in_c);
  END LOOP;
  RETURN out_array;
END;
$function$
;

--
-- count_lifes --
CREATE OR REPLACE FUNCTION count_lifes(in_text text, index int, scale int, alive_ch text)
 RETURNS int
 LANGUAGE plpgsql
 
AS $function$
DECLARE
  cnt int := 0;
  c text;
  x int;
  y int;
BEGIN
  x := (index - 1) % scale ;
  y := (index - 1) / scale ;

  -- life check
  IF y > 0 THEN
    -- up
    IF x > 0 THEN
      -- left-up
      c := substring(in_text, (index - scale - 1), 1);
      IF c = alive_ch THEN
        cnt := cnt + 1;
      END IF; 
    END IF;

    -- center-up
    c := substring(in_text, (index - scale), 1);
    IF c = alive_ch THEN
      cnt := cnt + 1;
    END IF; 

    IF x < scale -1 THEN
      -- right-up
      c := substring(in_text, (index - scale + 1), 1);
      IF c = alive_ch THEN
        cnt := cnt + 1;
      END IF; 
    END IF;
  END IF;

  -- left
  IF x > 0 THEN
    c := substring(in_text, (index - 1), 1);
    IF c = alive_ch THEN
      cnt := cnt + 1;
      END IF; 
  END IF;

  -- rigjt
  IF x < scale - 1 THEN
    c := substring(in_text, (index + 1), 1);
    IF c = alive_ch THEN
      cnt := cnt + 1;
      END IF; 
  END IF;

  IF y < scale - 1  THEN
    -- down
    IF x > 0 THEN
      -- left-down
      c := substring(in_text, (index + scale - 1), 1);
      IF c = alive_ch THEN
        cnt := cnt + 1;
      END IF; 
    END IF;

    -- center-down
    c := substring(in_text, (index + scale), 1);
    IF c = alive_ch THEN
      cnt := cnt + 1;
    END IF; 

    IF x < scale -1 THEN
      -- right-down
      c := substring(in_text, (index + scale + 1), 1);
      IF c = alive_ch THEN
        cnt := cnt + 1;
      END IF; 
    END IF;
  END IF;

  RETURN cnt;
END;
$function$
;

CREATE OR REPLACE FUNCTION transition_life(in_text text, scale int, alive_ch text, dead_ch text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  i int;
  c text;
  lifes int;
  out_text text := '';
BEGIN
  FOR i IN 1 .. scale * scale LOOP
    c := substring(in_text, i, 1);
    lifes = count_lifes(in_text, i, scale, alive_ch);
    IF c = alive_ch THEN
      -- current cell is alive
      IF lifes = 2 OR lifes = 3 THEN
        -- alive (maintain)
        out_text := out_text || alive_ch;
      ELSE
        -- dead
        out_text := out_text || dead_ch;
      END IF;
    ELSE
      -- current cell is dead
      IF lifes = 3 THEN
        -- alive (birth)
        out_text := out_text || alive_ch;
      ELSE
        -- dead (maintain)
        out_text := out_text || dead_ch;
      END IF;
    END IF;
  END LOOP;

  RETURN out_text;
END;
$function$
;

CREATE OR REPLACE FUNCTION initialize(scale int, alive_ch text, dead_ch text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  i int;
  out_text text := '';
BEGIN
  FOR i IN 1 .. scale * scale LOOP
    IF random() > 0.7 THEN
      out_text := out_text || alive_ch;
    ELSE
      out_text := out_text || dead_ch;
    END IF;
  END LOOP;
  RETURN out_text;
END;
$function$
;

CREATE OR REPLACE FUNCTION count_all_lifes(in_text text, scale int, alive_ch text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
  i int;
  lifes int := 0;
  c text;
BEGIN
  FOR i IN 1 .. scale * scale LOOP
    c := substring(in_text, i, 1);
    IF c = alive_ch THEN
      lifes := lifes + 1;
    END IF;
  END LOOP;

  RETURN lifes;
END;
$function$
;


--
-- pg_lifegame(scale int, sleep int, alive_ch text, dead_ch text)
--

CREATE OR REPLACE FUNCTION pg_lifegame(scale int, sleep int, alive_ch text, dead_ch text)
 RETURNS int -- dummy
 LANGUAGE plpgsql
AS $function$
DECLARE
  map_text text;
  lifes int;
  generation int := 1;
BEGIN
  map_text := initialize(scale, alive_ch, dead_ch);
  lifes := count_all_lifes(map_text, scale, alive_ch);
  RAISE NOTICE E'\nlife game (gen=%, lifes=%)\n%',generation, lifes, separate_text(map_text, scale, scale);

  LOOP
    map_text := transition_life(map_text, scale, alive_ch, dead_ch);
    lifes := count_all_lifes(map_text, scale, alive_ch);
    generation := generation + 1;
    RAISE NOTICE E'\nlife game (gen=%, lifes=%)\n%',generation, lifes, separate_text(map_text, scale, scale);

    lifes := count_all_lifes(map_text, scale, alive_ch);
    IF lifes = 0 THEN
      map_text := initialize(scale);
      PERFORM pg_sleep(sleep * 3);

    END IF;
   
    PERFORM pg_sleep(sleep);
  END LOOP;
  RETURN 0; -- dummy (no reached)
END;
$function$
;

--
-- pg_lifegame(scale int)
--

CREATE OR REPLACE FUNCTION pg_lifegame(scale int)
 RETURNS int -- dummy
 LANGUAGE plpgsql
AS $function$
BEGIN
  PERFORM pg_lifegame(scale, 1, '*', ' ');
  RETURN 0; -- dummy (no reached)
END;
$function$
;
