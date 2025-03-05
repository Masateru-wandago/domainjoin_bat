# 簡易的なドメイン参加のbat
## 利用方法
wmic computersystem where name="%computername%" call joindomainorworkgroup name="%domainname%" password="password" username="username" FJoinOptions=3

↑のPassword="password" username="username"をAD参加用のユーザー、パスワードに変更して実行

## その他
### 利用想定
・複数の参加可能なドメインがある場合  
・ユーザーに手打ちで打ってもらう場合    
### 動かして文字化けする場合
・コマンドプロンプト(cmd.exe)にて日本語を表示する場合デフォルトだとShift-JISが必要な為、Shift-JISの利用を推奨
### その他
・多分wmic〜の行にあらかじめ全て書くのが正解だと思う。(一般的な企業の場合)