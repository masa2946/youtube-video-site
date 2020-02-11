# README

# ツール・ライブラリの名前
 
youtube-video-site
 
## 簡単な説明
 APIを利用し、YouTubeの動画を中心に集めた動画キュレーションメディアです。ユーザー機能、投稿機能も実装しています。
 
![デモ](https://i.gyazo.com/ea94d950bf8381710d728517ca713a9b.jpg)
 
## 機能
 
- 機能1　YouTube Data APIを利用し検索ワードに対する動画を自動更新で表示。
- 機能2　YouTube動画を埋め込み表示しているのでサイト内で再生可能。
- 機能3　ユーザー機能、ログイン機能、いいね機能。

## 使い方
 
1. ヘッダー部分のカテゴリーをクリックすると各カテゴリーに合わせた動画を見ることができる。
2. 新規登録しログインすると、ユーザー同士で動画情報など投稿できる。
3. ユーザーの投稿に対し、いいねすることができる。
 
## インストール
 
```
$ git clone https://github.com/masa2946/youtube-video-site.git
$ cd youtube-video-site
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate

```
## YouTube Data APIの取得
・右記のサイトを参考にAPIキーを取得してください。
https://www.plusdesign.co.jp/blog/?p=7752

・取得したAPIキーを下記のように貼り付けてください。変更箇所はyoutubes_controller.rbの上から２行目。
```
# before
  GOOGLE_API_KEY = ENV["API_KEY"]

# after
  GOOGLE_API_KEY = "取得したAPIキー"
```
## その他
 YouTube Data APIを使用しているため、１日の上限である量のAPIデータを取得してしまった際、quotaExceededというエラーが出る場合があります。またこのエラーは１日でリセットされ解除されます。
