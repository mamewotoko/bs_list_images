XMLHttpRequestのサンプル
======================

概要
----

BuckleScript (ocaml) でJavaScriptのライブラリを作成(`js/main.js`)。
HTMLのscriptタグからそのライブラリの関数を呼ぶ(`index.html`)。 という例。

前提
----

npm がインストールされていること。

インストール
-----------

```
npm install
```

ビルド
-----

```
npm run build
```

実行
-----

### 方法1: webpack-dev-serverをつかう

```
npm run dev
```

Webブラウザが起動してページが表示される。


### 方法2: webサーバを立てる

1. HTTPサーバを起動しこのファイルがあるディレクトリをWebブラウザで閲覧できるようにする。

```
python3 -m http.server
```

2. Webブラウザでindex.htmlを閲覧する <http://localhost:8000>

merlin: エディタでの補完、ドキュメント参照
---------------------------------------

```
opam install merlin
```

Emacsの場合

キー|コマンド|備考
-----|--------------|--------------
C-c C-d|merlin-destruct|場合分け
C-c C-l|merlin-locate|定義箇所にジャンプする
C-c i|merlin-document|ocamldocのコメントを表示

詳細
----
* browserify の `-r` オプションでbrowserifyで出力したjavascriptの関数を呼べるようにする [参考: external requires](https://github.com/browserify/browserify#external-requires)
  * [package.json](package.json) で指定している
* [es6](https://github.com/mamewotoko/bs-quickstart/tree/feature/es6)

キーワード
---------
bucklescript, bs-webapi, ocaml, browserify, commonjs

ライセンス
---------

```
   Copyright 2020 Takashi Masuyama

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

2   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```

-----
Takashi Masuyama < mamewotoko@gmail.com >  
http://mamewo.ddo.jp/
