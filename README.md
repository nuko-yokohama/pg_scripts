# pg_scripts

役に立つかどうかは分からないpl/pgsqlのスクリプト群。

* tategaki function
* pg_banner function
* load_json_file
* get_database_cluster_size 
* pg_lifegame

## tategaki function

```
testdb=# SELECT tategaki('ぽすぐれを使い　　　　　横書きを縦書きに変換するスクリプトを書いたので　今後活用していきたい　　',4, 12);
 tategaki 
----------
 今ス横ぽ+
 後ク書す+
 活リきぐ+
 用プをれ+
 しト縦を+
 てを書使+
 い書きい+
 きいに　+
 たた変　+
 いの換　+
 　です　+
 　　る　+
 
(1 row)

testdb=# SELECT tategaki('町田は神奈川');
 tategaki 
----------
 神町    +
 奈田    +
 川は    +
 
(1 row)

```

##  pg_banner function

### 対応文字

* 英字
  * 英字は全て大文字として表示される。
* 数字
* 記号
  * ピリオド、空白、アンダースコア


文字は今後増やす予定。面倒なのでしないかもしれない。

```
testdb=# SELECT * FROM pg_banner('pg_banner');
                                   data                                   
--------------------------------------------------------------------------
 ######   #####          ######     #    #     # #     # ####### ######  
 #     # #     #         #     #   # #   ##    # ##    # #       #     # 
 #     # #               #     #  #   #  # #   # # #   # #       #     # 
 ######  #  ####         ######  #     # #  #  # #  #  # #####   ######  
 #       #     #         #     # ####### #   # # #   # # #       #   #   
 #       #     #         #     # #     # #    ## #    ## #       #    #, 
 #        #####  ####### ######  #     # #     # #     # ####### #     # 
(7 rows)

testdb=# SELECT * FROM pg_banner('PostgreSQL');
                                       data                                       
----------------------------------------------------------------------------------
 ######  #######  #####  #######  #####  ######  #######  #####   #####  #       
 #     # #     # #     #    #    #     # #     # #       #     # #     # #       
 #     # #     # #          #    #       #     # #       #       #     # #       
 ######  #     #  #####     #    #  #### ######  #####    #####  #     # #       
 #       #     #       #    #    #     # #   #   #             # #   # # #       
 #       #     # #     #    #    #     # #    #, #       #     # #    #  #       
 #       #######  #####     #     #####  #     # #######  #####   #### # ####### 
(7 rows)

```

## load_json_file

以下のQiitaページ参照

* [JSON文書を表形式にバルクロードする](https://qiita.com/nuko_yokohama/items/d19059eb04e5faa30a2d)

## get_database_cluster_size

以下のQiitaページ参照

* [PostgreSQLのデータベースクラスタのサイズを汎用ファイルアクセス関数で算出する](https://qiita.com/nuko_yokohama/items/ef1e9f4941102f18f987)

## pg_lifegame

名前のとおりPostgreSQL上でライフゲームをするだけのスクリプト。

pg_lifegame(scale int)

scale はマップの広さを示す。8 なら 8 ✗ 8のマップを生成する。

# 作成者
ぬこ＠横浜(@nuko_yokohama)

