--
-- get_database_cluster_size()
-- Gets the size of the database cluster.
--
CREATE OR REPLACE FUNCTION get_dir_size(path text)
 RETURNS integer
 LANGUAGE plpgsql

AS $function$
DECLARE
  files RECORD;
  stat RECORD;
  size INTEGER;
  dir_size INTEGER;
  target_size INTEGER;
BEGIN
  size = 0;
  FOR files IN SELECT pg_ls_dir(path) AS name LOOP

    -- RAISE NOTICE 'file name = %', path || '/' || files.name;

    SELECT * INTO stat FROM pg_stat_file( path || '/' || files.name );
    IF NOT FOUND THEN
      RAISE EXCEPTION 'file not found, %', files.name;
    END IF;

    target_size = stat.size;
    IF stat.isdir = 'f' THEN
      size := size + target_size;
    ELSE
      dir_size = get_dir_size(path || '/' || files.name) + target_size;
      size := size + dir_size;
    END IF;
  END LOOP;
  RETURN size;
END;
$function$;

--
-- Main function
--
CREATE OR REPLACE FUNCTION get_database_cluster_size()
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE
  size INTEGER;
  stat RECORD;
BEGIN
  SELECT * INTO stat FROM pg_stat_file('.');
  size = stat.size;
  size := size + get_dir_size('.');
  RETURN size;
END;
$function$;
