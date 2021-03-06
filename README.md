# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Get Talent

![サンプル画像](./da1c4b40730ef43e23ffda9b263d8f2c.jpg)

# 概要  

企業間の認知のための共通のプラットフォーム（アプリケーション）</br>  

# アプリケーション名  

Get Talent</br>

# 制作背景

①前職の環境から建築業界では人手不足が深刻化しており、作業工程の遅れが課題として取り上げられていた</br>

②労働者確保のために、現状で認知されていない企業を減らす事で企業間の出会いを促進させ、人手不足を緩和出来ないかと考えた</br>

③中小企業・零細企業の場合、ホームページを所有していなかったりとPR活動に対して疎い傾向が強い。又、ホームページを所有していても認知されていないケースも多い　⇨　元請け・下請け共通のプラットフォームを制作しPR活動のサポートが必要ではないか</br>

④エンジニアという職業に興味を抱いた経緯に、他業種に対して等しくソリューションを提供できるという視点があり、自分なりに分析・設計・開発を通して実行してみたかったため</br>

# 実装機能 

①ユーザー登録</br>

②会社登録（編集・削除可能）</br>

③詳細機能</br>

④コメント投稿</br>

⑤仕事依頼（実装中）</br>

# 開発環境

RUby/RubyonRails/Javascript/HTML/CSS/Github/Visual Studio Code

# デモ動画

[![トップページ全体図](https://i.gyazo.com/8f42788e58a652da821a79293b68564a.gif)](https://gyazo.com/8f42788e58a652da821a79293b68564a)

[![ログイン](https://i.gyazo.com/35528c66fe5e92bd3bb2f662acbe1e90.gif)](https://gyazo.com/35528c66fe5e92bd3bb2f662acbe1e90)

[![会社登録](https://i.gyazo.com/f3665179741df78ddae27345ed0cb1e7.gif)](https://gyazo.com/f3665179741df78ddae27345ed0cb1e7)

[![詳細ページ](https://i.gyazo.com/084ff2628db3d3343eeaa33c03414ebe.gif)](https://gyazo.com/084ff2628db3d3343eeaa33c03414ebe)

# 今後実装したい機能/課題

・職種や地域等に合わせた検索機能（必要としている企業をいち早く調べる事ができるため）

・画像が大きいため投稿が増えるとページが縦長になってしまう　⇨　一覧ページを別に作成する or ページネーションを使用する

# 工夫したポイント

・ユーザーがログインしていないと編集や削除が出来ないといった条件分岐を付与する事で実際のセキュリティを意識しました。</br>

・Javascriptによるページスクロール　⇨　トップページは縦長のため、ヘッダーのボタンをクリックすると選択した部分に移動するようにしました。</br>

・実際に業界が抱える課題を題材にする事で、エンジニアとしての実戦を意識して制作しました。</br>

・利用するユーザーの事を考え、READMEを読まずともサービスの目的/用途を理解できるように、トップページに記載する事で現実的なアプリケーションにする事を意識しました。</br>

# 本番環境

・IPアドレス: 13.113.218.213
※デプロイ中につき表示されないページがある場合がございます。

# Get Talent DB設計

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|job_id|integer|null: false, foreign_key: true|
|text|string|

### Association
- belongs_to :job
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :jobs
- has_many :comments
- has_many :requests

## jobsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|occupation|string|null: false|
|text|text|null: false|
|image|text|null: false|
|region|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user

## requestsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

