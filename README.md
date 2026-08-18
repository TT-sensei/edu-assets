# edu-assets

小学校向けWeb教材で共通利用する、バッジ・報酬画像のアセット集です。[Badge Lab](https://tt-sensei.github.io/edu-assets/)で検索、分類・タグ絞り込み、プレビュー、URLコピー、選択画像のダウンロードができます。

## 収録内容と構造

- 共通バッジ：`assets/badges/common/`
- 教科別バッジ：`assets/badges/japanese/`、`math/`、`science/`、`social/`
- エレメント：`assets/elements/<属性>/level-1|level-2|level-3/badge.png`
- コレクション：`assets/collections/<シリーズ>/common|rare|super-rare|secret/<項目>/badge.png`

`assets/collections/`には、現在`animal`、`dinosaur`、`fantasy`、`flower`、`fruit`、`gem`、`insect`、`music`、`sea-animal`、`space`、`treasure`があります。

## 基本的な使い方

Badge Labで使用する画像を開き、「URLをコピー」で取得した実在URLを教材から参照します。

```html
<img
  src="https://tt-sensei.github.io/edu-assets/assets/badges/common/clear/badge.png"
  alt="クリアバッジ"
>
```

フォルダ名や画像URLを推測しないでください。構造や画像は追加・整理されるため、利用時にBadge LabまたはGitHub上の実ファイルを確認します。

## 教材制作共通基盤

| プロジェクト | 担当 | GitHub | Pages |
| --- | --- | --- | --- |
| edu-components | 動作・ロジック | [Repository](https://github.com/TT-sensei/edu-components) | [Catalog](https://tt-sensei.github.io/edu-components/) |
| edu-effects | UI・CSS・視覚演出 | [Repository](https://github.com/TT-sensei/edu-effects) | [Catalog](https://tt-sensei.github.io/edu-effects/) |
| sounds-recipe- | Web Audio APIの教材用サウンドレシピ | [Repository](https://github.com/TT-sensei/sounds-recipe-) | [Catalog](https://tt-sensei.github.io/sounds-recipe-/) |
| edu-assets | バッジ・エレメント・コレクション画像 | [Repository](https://github.com/TT-sensei/edu-assets) | [Catalog](https://tt-sensei.github.io/edu-assets/) |

AIで教材を作成する場合の`BadgeManager`、獲得イベント、CSS演出、サウンドとの連携は、[edu-componentsのAI-GUIDE](https://github.com/TT-sensei/edu-components/blob/main/AI-GUIDE.md)を参照してください。
