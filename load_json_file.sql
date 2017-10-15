--
-- load_json_file function.
--
-- parameter.
-- filename : json documents filename
-- tablename : load table name
-- createflag :
--   true : drop, create table, insert
--   false : insert only         
--

CREATE OR REPLACE FUNCTION load_json_file(filename text, tablename text, createflag boolean) RETURNS integer AS $$
DECLARE
  sql text;
  create_table_sql text;
  drop_table_sql text;

  insert_column_sql_fragment text;
  select_sql_fragment text;
  insert_sql text;

  select_sql text;
  rec RECORD;
  loop_cnt integer;
BEGIN
  -- Create JSON data load temporary table
  CREATE TEMP TABLE tmp_table (data jsonb);

  -- Load JSONB data.
  sql := 'COPY tmp_table FROM ''' || filename || '''';
  -- RAISE NOTICE 'sql=%', sql;
  EXECUTE sql;

  loop_cnt := 0;
  -- DROP TABLE statements.
  drop_table_sql := 'DROP TABLE IF EXISTS ' || tablename ;
  -- CREATE TANLE statements.
  create_table_sql := 'CREATE TABLE ' || tablename || '(' ;
  insert_column_sql_fragment := 'INSERT INTO ' || tablename || '(' ;
  select_sql_fragment := 'SELECT ';

  FOR rec IN SELECT key, value, jsonb_typeof(value) as type FROM jsonb_each((SELECT data FROM  tmp_table LIMIT 1)) as t LOOP
    IF loop_cnt <> 0 THEN
      create_table_sql := create_table_sql || ', ';
      insert_column_sql_fragment := insert_column_sql_fragment || ', ';
      select_sql_fragment := select_sql_fragment || ', ';
    END IF; 

    -- CREATE TABLE statements.
    CASE rec.type
      WHEN 'string' THEN
        create_table_sql := create_table_sql || rec.key || ' text';
      WHEN 'number' THEN
        create_table_sql := create_table_sql || rec.key || ' numeric';
      ELSE
        -- nop
    END CASE;

    -- INSERT column statement fragment
    insert_column_sql_fragment := insert_column_sql_fragment || rec.key  ;

    -- SELECT statement fragment
    select_sql_fragment := select_sql_fragment || '(data->>''' || rec.key || ''')::';
    CASE rec.type
      WHEN 'string' THEN
        select_sql_fragment := select_sql_fragment || ' text';
      WHEN 'number' THEN
        select_sql_fragment := select_sql_fragment || ' numeric';
      ELSE
        -- nop
    END CASE;

    loop_cnt := loop_cnt + 1;

  END LOOP;

  -- cretae statements.
  create_table_sql := create_table_sql || ')';
  insert_column_sql_fragment := insert_column_sql_fragment || ') ';
  select_sql_fragment := select_sql_fragment || ' FROM tmp_table';
  insert_sql := insert_column_sql_fragment || select_sql_fragment;

  -- check createflag 
  IF createflag = true THEN
    EXECUTE drop_table_sql;
    EXECUTE create_table_sql;
  END IF;

  -- EXECUTE insert_sql;
  -- RAISE NOTICE 'insert_sql=%', insert_sql;
  EXECUTE insert_sql;

  -- drop temporary json table
  DROP TABLE IF EXISTS tmp_table;

  RETURN 0;
END
$$
LANGUAGE plpgsql;
