mageを.wikiにコミットと、プッシュを行う
cd test1.wiki
git add .
git commit -a -m 'update submodule'
git push

# 仕様書リポジトリ内にある`[project].wiki`をコミットステージへ移動する`
cd ..
git add test1.wiki
