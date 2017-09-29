# pg_scripts

* tategaki function

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
