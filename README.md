# 夢
[itKaiwaiJisho](https://github.com/actionpterygii/itKaiwaiJisho)をElmでやってやろうってはなしですわ  
元はChromeExtensionなのでスマホから見るイメージでの感じです。  
[ここからみれます](https://actionpterygii.github.io/jishoWoElmDePwa/)

## かえたところ
- ぐぐりはボタンを用意する形に
- 使い方の説明とかもういらんやろて

## ここがポイント！
- docsフォルダをつくり、HTMLとか入れ、Settingから指定でGitHubPagesやってるよ！
- `elm make src/main.elm --optimize --output=dist/script.js`ってしてやってるのでjsでだして、HTMLでよんでるよ（HTML参照）
- でたjsを`elm-minify`でさらに圧縮しているよ

## いま
入力された文字をぐぐるボタンがあるのみの存在です。さすがに無駄すぎる
