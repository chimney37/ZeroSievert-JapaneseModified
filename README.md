# Modについて

このModは非公式な日本語翻訳修正、テキストの読みやすさ向上や、UIに適切なフォントサイズに調整した変更を含みます。
弾丸種類の名前の改善、その他修正テキストを今後もアップデートしていくつもりです。

この翻訳は、『Zero Sievert 日本語WIKI』(https://wiki3.jp/zero_sievert) の内容を大いに参考にさせていただきました。

言語設定から「日本語（改）」を選択してご利用ください。

最新版はRounded M+フォントを採用しました(http://jikasei.me/font/rounded-mplus/about.html) 。

また、このModはCabo Studio によって開発され、Modern Wolf によって公開された「Zero Sievert」に基づいています。
本MODは独立したプロジェクトであり、公式の開発者とは関係ありません。

- 開発者: Cabo Studio
- パブリッシャー: Modern Wolf

今後も引き続き更新して行きたいと思いますので、Modコミュニティや応援してくださる方々に引き続きよろしくお願いいたします。

chimney37

<img src="https://img.shields.io/badge/-Steam-000000.svg?logo=steam&style=plastic"><img src="https://img.shields.io/badge/-Windows-0078D6.svg?logo=windows&style=flat-square"><img src="https://img.shields.io/badge/-catspeak-008373.svg?logo=catspeak&style=social"><img src="https://img.shields.io/badge/-%E8%87%AA%E5%AE%B6%E8%A3%BD%20Rounded%20M+-CC0000.svg?logo=%E8%87%AA%E5%AE%B6%E8%A3%BD%20Rounded%20M+&style=popout">

# Applying Patches

Steam Libraryを使用している場合は[Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3475700880)経由でModを導入してください。

著作権保護の観点からModに使うjapanese.csvを載せることを避けていて、その代わりに差分となるpatch fileを使用しています。

Steam Workshop以外での導入方法は、patchをvanilla版japanese.csvファイルに当て、`JapaneseModified`Modディレクトリに`japanese.csv`としてコピーして使用してください。

`patch /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/ZS_vanilla/languages/japanese/japanese.csv japanese.patch -o japanese_patched.csv`

`cp japanese_patched.csv "/mnt/d/SteamLibrary/steamapps/common/ZERO Sievert/Mods/JapaneseModified/japanese.csv"`

# Generating Patches

やり方は様々ですが、例えば翻訳した行の追加：
`sed -i '185i "Afanasiy Ozerov","NPCs","15","アファナシー・オゼロフ"' japanese.csv`
`echo '" To open the map","Tutorial text","128","マップを開くには"' >> japanese.csv`

Patch生成：
`diff -u /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/ZS_vanilla/languages/japanese/japanese.csv ./japanese.csv > japanese.patch`

(`./japanese.csv`は暫定的にローカルスペースに持ってきたモッドファイルです)

# Files

```
.
├── LICENSE
├── README.md
├── icon.png
├── init.script
├── japanese.patch
├── meta.ini
└── rounded-mplus-1c-medium.ttf

```
