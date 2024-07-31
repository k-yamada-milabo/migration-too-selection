# 概要
Liquibase は changelog ファイルの記述形式がやや煩雑なため、選定候補の対象外とした。  
ただ Liquibase 自体は高機能でツールとしての使い道はあるため、試したコマンドを残しておく

# やったこと
## 二つのデータベース間の差異をSQLで表す
docker compose up -d すると立ち上がる二つのデータベース間の差異をSQLで出力する
```shell
$ liquibase diff-changelog --url="jdbc:postgresql://0.0.0.0:55432/tool" --username=postgres --password=passwd --reference-url="jdbc:postgresql://0.0.0.0:65432/tool" --reference-username=postgres --reference-password=passwd --changelog-file=example-changelog.sql
```
