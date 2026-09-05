# edu-assets

小学校向けWeb教材で共通利用する、**バッジ・エレメント・コレクション画像の共有アセットライブラリ**です。

教材ごとに画像をコピーして持つのではなく、`edu-assets` にある共通素材をWebから直接参照することで、複数の教材で同じ世界観・報酬システムを利用できます。

🌐 **Badge Lab**：https://tt-sensei.github.io/edu-assets/

Badge Labでは、画像の検索、分類、タグ絞り込み、プレビュー、URLコピー、選択画像のダウンロードができます。

## 収録しているもの

### バッジ

学習の達成、挑戦、継続、成長、思考、協力などを表す共通バッジと、教科別バッジを収録しています。

```text
assets/badges/common/
assets/badges/japanese/
assets/badges/math/
assets/badges/science/
assets/badges/social/
```

### エレメント

学習の進行やレベル、属性などに利用できるエレメント画像です。

```text
assets/elements/<属性>/level-1/
assets/elements/<属性>/level-2/
assets/elements/<属性>/level-3/
```

### コレクション

子どもが集めて楽しめるコレクション型の画像です。

```text
assets/collections/<シリーズ>/common/
assets/collections/<シリーズ>/rare/
assets/collections/<シリーズ>/super-rare/
assets/collections/<シリーズ>/secret/
```

現在、主に次のシリーズを収録しています。

- animal
- dinosaur
- fantasy
- flower
- fruit
- gem
- insect
- music
- sea-animal
- space
- treasure

シリーズや画像は今後も追加・整理されます。利用するときは、実際のGitHub上のファイルまたはBadge Labで存在を確認してください。

## Web教材での使い方

教材サイトで画像を表示するときは、原則として `assets/web/` の軽量WebPを使用します。

原本と同じ相対パスを保っているため、基本的には次のように読み替えられます。

```text
原本
assets/badges/common/clear/badge.png

Web表示用
assets/web/badges/common/clear/badge.webp
```

たとえば、クリアバッジを教材に表示する場合は次のように参照します。

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/web/badges/common/clear/badge.webp"
  alt="クリアバッジ"
>
```

### なぜWebPを使うの？

`assets/web/` は、元画像をWeb表示向けに軽量化したものです。

- ページの読み込みを軽くする
- タブレットやスマートフォンでも表示しやすくする
- 元画像の透明背景を維持する
- 原本と同じフォルダ構造なので対応関係を確認しやすい

Web版がまだ用意されていない画像については、対応する原本へフォールバックできます。

## マスター素材とWeb版の使い分け

```text
assets/badges/
assets/elements/
assets/collections/
        ↓
   マスター素材
   高解像度・編集用

assets/web/
        ↓
   Web表示用
   軽量WebP
```

通常の教材画面、バッジ表示、報酬表示、コレクション一覧などでは `assets/web/` を優先してください。

原本PNG/JPGは、高解像度ダウンロード、印刷、再編集など、原本が必要な場合に使用します。

原本素材は削除・上書き・再生成しないでください。

## AIで教材を作るときのルール

AIに教材を作らせる場合も、次のルールを守ってください。

1. まず `assets/web/` に対応するWebPがあるか確認する。
2. WebPが存在する場合は、教材の表示にWebPを使用する。
3. WebPがない場合だけ、対応する原本PNG/JPGへフォールバックする。
4. 画像URLやフォルダ名を推測しない。
5. Badge LabまたはGitHub上の実ファイルを確認してから参照する。
6. 教材リポジトリへ画像をコピーせず、公開済みのedu-assets URLを利用する。
7. 原本PNG/JPGを通常のWeb表示に直接使用しない。
8. 原本素材を削除・上書き・再圧縮しない。

AI向けの詳細ルールは [`AI-GUIDE.md`](AI-GUIDE.md) にまとめています。

## 教材制作の共通基盤

TT-senseiの教材では、画像だけでなく、UI部品・演出・サウンドなども共通化して利用できます。

| プロジェクト | 役割 | GitHub | Pages |
| --- | --- | --- | --- |
| **edu-components** | 教材の動作・ロジック・共通コンポーネント | https://github.com/TT-sensei/edu-components | https://tt-sensei.github.io/edu-components/ |
| **edu-effects** | UI・CSS・視覚演出 | https://github.com/TT-sensei/edu-effects | https://tt-sensei.github.io/edu-effects/ |
| **sounds-recipe-** | Web Audio APIの教材用サウンドレシピ | https://github.com/TT-sensei/sounds-recipe- | https://tt-sensei.github.io/sounds-recipe-/ |
| **edu-assets** | バッジ・エレメント・コレクション画像 | https://github.com/TT-sensei/edu-assets | https://tt-sensei.github.io/edu-assets/ |

特にバッジを教材へ実装するときは、`edu-components` の `BadgeManager` と組み合わせることで、獲得イベント、表示、演出などを共通化できます。

## 基本方針

`edu-assets` は、TT-senseiが作る小学校向けWeb教材の**共通素材庫**です。

「教材ごとに同じ画像を持つ」のではなく、共通アセットを一か所で管理し、各教材から参照することを基本とします。

新しい教材を作るときは、まず次を確認してください。

```text
1. edu-assetsに使えそうな画像があるか？
2. assets/web/ にWeb版があるか？
3. Badge Labで画像を確認できるか？
4. 既存のバッジ・コレクションを再利用できないか？
```

## License

このリポジトリのTT-senseiオリジナルの画像・イラスト素材は、**CC BY-NC 4.0** の条件で提供します。

学校・家庭での非営利利用、授業での利用、非営利目的の改変は可能です。

商用利用、素材そのものの販売、素材集としての再配布は許可していません。

詳しい条件は [`LICENSE`](LICENSE) を確認してください。

第三者が権利を持つ素材には、この条件は適用されません。個別のファイルやディレクトリに別途ライセンス表示がある場合は、その表示を優先してください。

Copyright © 2026 TT-sensei.
