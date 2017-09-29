--
-- tategaki.sql
--
DROP FUNCTION IF EXISTS tategaki(src text, width int, height int);
CREATE FUNCTION tategaki(src text, width int, height int) RETURNS text AS $$
DECLARE
  src_len int;
  dest_len int;
  dest_array text[];
  i int;
  x int; -- 0 relative
  y int; -- 0 relative
  t text;
  idx int; -- dest_array index
BEGIN
  -- parameter check(1)
  IF src IS NULL OR width IS NULL OR height IS NULL THEN
    RAISE EXCEPTION 'invalid parameter (null)';
  END IF;
  IF src = '' OR width < 1 OR height < 1 THEN
    RAISE EXCEPTION 'invalid parameter (null)';
  END IF;

  -- parameter check(2)
  src_len := length(src);
  dest_len := (width + 1) * height;

  IF src_len > (width * height) THEN
    RAISE EXCEPTION 'text overfllow, text length = %, width * height = %', src_len, (width * height);
  END IF;

  -- output array initialize
  FOR i IN 1 .. dest_len LOOP
    dest_array[i] := '　';
  END LOOP;
  FOR i IN 1 .. height LOOP
    dest_array[i * (width + 1)] := E'\n';
  END LOOP;

  -- copy src to dest_array
  -- RAISE NOTICE 'src_len=%, width=%, height=%', src_len, width, height;
  FOR i IN 1 .. src_len LOOP
    x := (width * height - i) / height;
    y := ((i -1) % height);
    t := substring(src, i, 1);
    idx := y * (width + 1) + (x + 1);
    -- RAISE NOTICE 'i=%, t=%, x=%, y=%, idx=%', i, t, x, y, idx;
    dest_array[idx] := t;
  END LOOP;

  -- generate output text from dest_array
  RETURN array_to_string(dest_array, '');
END;
$$ LANGUAGE plpgsql IMMUTABLE;


-- wrapper function (default width=2, height=3)
DROP FUNCTION IF EXISTS tategaki(src text);
CREATE FUNCTION tategaki(src text) RETURNS text AS $$
BEGIN
  RETURN tategaki(src, 2, 3);
END;
$$ LANGUAGE plpgsql IMMUTABLE;
