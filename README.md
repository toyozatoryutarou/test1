## 運用のルールとgitの初歩
### 作成の流れ
* 作業のはじめに, 各自のPCからGitHub上の最新のmaster branchを取得します．
* 各自のPCでbranchを切ります.
	* 新しく記事を作成する場合は, ブランチ名の接頭語に `create/` をつけます.
	* 修正する場合は, ブランチ名の接頭語に `fix/` をつけます.
* addおよびcommitします. そしてGitHubへそのbranchをpushします.
* GitHub上で「そのbranchをmaster branchへマージするためのPull Request」を作成します. レビュワーを募ります（最低1名）.
* レビュワーはレビューをします.
  * レビュワーはPull Request上でコメントします. 「Files changed」のページで行単位でコメントできます.
  * Pull Requestの際に作られるpdfまたはhtmlを見ながらレビューを行います.
  * レビュワーの指摘を受けて,作成者は、コメントに返事をしたり, 議論します.　
  * 各自のPCでmdファイルを修正して, commitおよび同じbranchにpushします.
* レビュワーのLGTM（Looks Good To Me = いいと思うよ）が出るまで上記のレビューを繰り返します.
* 現時点で豊里がPull Requestをmergeします.

### gitの初歩

リポジトリ自体を初めて取得する場合は

 * `$ git clone https://github.com/[projects]`

develop branchを取得

 * `$ git checkout develop`  
 * `$ git pull origin develop`  

作業用のbranchを切って移動する

 * `$ git checkout -b 'create/partXX/chapYY'`

変更したファイルを確認

 * `$ git status -sb`

修正したファイルをステージングする

 * `$ git add hoge/huga.md`

インデックスに追加した更新をローカルブランチにcommitする  

何を修正したのかがわかるようにコミットメッセージを追加しましょう．

 * `$ git commit -m '1章を翻訳しました'`

コミット内容をリモートブランチにpushする  
※一度pushを行いエラー内容が返ってくるのでそちらをコピペしてpushする

 * `$ git push`

### レビュー

GitHub上でPull Requestを作成すると[CircleCI](https://circleci.com/)で自動的にpdfとhtmlに変換処理が行われます.
Pull Requestページのcommit履歴の横にチェックマークまたはバツ印がつきます. これらはCircleCIのビルドページへのリンクになっています.

ビルドが成功している場合はArtifactsというタブが表示されます（ログインしている必要があります）.
その中をドリルダウンしていくとpdfとhtmlへのリンクが表示されています.
ビルドが失敗している場合はTest Resultsというタブの`$ build/build_chapter.sh`というブロックをクリックするとエラー詳細が表示されます.
