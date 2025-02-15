
参考書
# HTML5プロフェッショナル認定試験レベル1

https://amzn.asia/d/0XD6pb7


## 第1章 Webの基礎知識

### リクエストメソッド

|メソッド|概要|
|:-|:-|
|GET|リソースの要求|
|POST|リソースの送信|
|PUT|リソースの更新（置き換え）|
|DELETE|リソースの削除|
|HEAD|リソースの要求（ただしレスポンスボディを返さない）|
|OPTIONS|サーバの調査|
|CONNECT|トンネルを開く|  
|TRACE|ネットワーク経路の調査|


### ステータスコード

|コード|概要|
|:-|:-|
|101|プロトコルの切り替え（WebSocketなどで使用）|
|200|成功|
|301|永続的なリダイレクト|
|304|変更なし。キャッシュしたファイルが使用される|
|307|一時的なリダイレクト|
|400|クライアントエラー|
|401|認証失敗|
|404|見つからない|
|500|サーバーエラー|


### 認証について

#### Basic認証
・ユーザ名・パスワードはハッシュ値化されない
・HTTPSによる通信が推奨される
・ほぼ全てのブラウザやWebサーバで実装されている
・ユーザ名・パスワードはBase64化した上でAuthorizationヘッダ※に付加されて送信

> ■ 関連
> Authorizationヘッダとは、標準的なHTTPヘッダの１つ


#### Digest認証

・ユーザ名・パスワードがハッシュ値化できる
・Basic認証より安全だが、処理と実装が重い


### HTTPクッキー

・4KB程度のデータを保存
・ブラウザにデータを保存する
・JavaScriptで操作できる
・データの保存期間を定める必要がある

#### セキュリティの強化
・HTTP通信での送受信を禁止 → Secure属性
・JavaScriptからのアクセス禁止 → HttpOnly属性

> ■ 関連
> HttpOnly属性によりJavaScriptからのアクセスを禁止するのは
> XSS（クロスサイトスクリプティング）対策として有効。


### HTTPリクエスト

#### HTTPリクエストの概要

開始行 + HTTPヘッダ + 改行 + メッセージボディ 

```:開始行
POST http://hoge.com/jp/ HTTP/1.1
```

```:HTTPヘッダ
Content-Type: text/plain<br>Content-Length: 598
Content-Length: 598
User-Agent: Mozzila/5.0...
```

```:メッセージボディ
foo=bar
```

#### 主なヘッダフィールド

|ヘッダフィールド名|説明|
|:-|:-|
|Accept-Language|ブラウザが受け入れ可能な言語|
|Accept|クライアントが受け入れ可能なコンテンツタイプ|
|Content-Length|メッセージボディのサイズ|
|Content-Type|コンテンツのメディアタイプ|
|Last-Modified|リソースの最終更新情報|
|Age|中間サーバにキャッシュする秒数|
|Cache-Control|キャッシュを制御|
|Expires|リソースの有効期限|
|Host|サーバメイトポート|
|Referer|リクエストしたページのURL|
|User-Agent|リクエストしたブラウザを表す|
|Authorization|Basic認証などの認証情報|


#### コンテンツタイプ（Acceptヘッダフィールド）

|コンテンツタイプ|MIMEタイプ|
|:-|:-|
|JSON|application/json|
|HTML|text/html|
|TEXT|text/plain|
|JavaScript|text/javascript|
|mp3|audio/mpeg|
|JPG|image/jpg|



### URLの名称

