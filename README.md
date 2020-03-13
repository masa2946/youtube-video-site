# アプリ名
 
youtube-video-site
 
# 概要
  YouTube Data APIを利用し、YouTubeの動画を中心に集めた動画キュレーションメディアです。主にニュース、ビジネスなどの分野ごとに動画をご覧いただけます。ユーザー機能、投稿機能も実装しています。
 
[![Image from Gyazo](https://i.gyazo.com/96437e563c191ebb66615df9b7f67df2.jpg)](https://gyazo.com/96437e563c191ebb66615df9b7f67df2)
[![Image from Gyazo](https://i.gyazo.com/3803c37a962189ac9bcdbb4d8c203777.jpg)](https://gyazo.com/3803c37a962189ac9bcdbb4d8c203777)
[![Image from Gyazo](https://i.gyazo.com/1b6a0a09548edf9dba74eee7be8d8f2a.png)](https://gyazo.com/1b6a0a09548edf9dba74eee7be8d8f2a)
 
## 機能
 
- 機能1　YouTube Data APIを利用し検索ワードに対する最新動画を自動更新で表示。ブラウザを更新するだけで最新動画が表示される。
- 機能2　YouTube動画を埋め込み表示しているのでサイト内で再生可能。
- 機能3　ユーザー機能。ユーザーはログインすればオススメ動画情報などの投稿などすることが可能。
- 機能4　いいね機能。ユーザーはログインすれば、他ユーザーが投稿した投稿に関していいねを付けることができる。

## 使い方
 
1. ヘッダー部分の各カテゴリーをクリックすると各カテゴリーに合わせた動画を見ることができる。
2. 新規登録しログインすると、ユーザー同士で動画情報など投稿できる。
3. ユーザーの投稿に対し、いいねすることができる。
 
# ローカルでのsetup方法

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

# 制作背景(意図)

- ・5Gも近々開始され、動画がどこでも見やすくなり動画市場が拡大することが予想されるため。
- ・YouTubeの市場も拡大傾向であり、その動画を各カテゴリーに分けたキュレーションメディアの需要も高まると予想したため。
- ・人には、文字などのテキストよりも動画の方が、より分かりやすく情報が入ってくると考えているため。
- ・私自身、YouTubeが好きで動画を見て元気が出た経験や、動画を見て情報を収集した経験があるため。

# 工夫した点

新しくYouTube Data APIを学び、アプリに取り入れた点。YouTube Data APIを取り入れたことにより、ブラウザを更新すれば自動で最新の動画が表示されるようになった。

# 使用技術(開発環境)

Ruby on rails, jquery, html, scss, GitHub

# 今後実装したいこと

- ・いいね機能の非同期化
- ・デプロイ

# その他

 YouTube Data APIを使用しているため、１日の上限である量のAPIデータを取得してしまった際、quotaExceededというエラーが出る場合があります。またこのエラーは１日でリセットされ解除されます。
